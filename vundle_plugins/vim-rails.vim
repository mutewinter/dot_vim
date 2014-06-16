if exists('g:vundle_installing_plugins')
  Plugin 'tpope/vim-rails'
  finish
endif

nnoremap <leader>e   :E
nnoremap <leader>emm :Emodel<space>
nnoremap <leader>evv :Eview<space>
nnoremap <leader>ecc :Econtroller<space>

" Rails Only
nnoremap <leader>eff :Efabricator<space>
nnoremap <leader>ell :Elayout<space>
nnoremap <leader>ela :Elayout<space>
nnoremap <leader>elo :Elocale<space>
nnoremap <leader>elb :Elib<space>
nnoremap <leader>eee :Eenvironment<space>
nnoremap <leader>ehh :Ehelper<space>
nnoremap <leader>eii :Einitializer<space>
nnoremap <leader>ejj :Ejavascript<space>
nnoremap <leader>ess :Espec<space>
nnoremap <leader>esm :Espec models/
nnoremap <leader>esc :Espec controllers/
nnoremap <leader>esv :Espec views/
nnoremap <leader>esl :Espec lib/

" Add custom commands for Rails.vim
" Thanks to http://git.io/_cBVeA and http://git.io/xIKnCw
let g:rails_projections = {
      \ 'app/models/*.rb': {'keywords': 'validates_conditional'},
      \ 'db/seeds/*.rb': {'command': 'seeds'},
      \ 'app/concerns/*.rb': {'command': 'concern'},
      \ 'spec/support/*.rb': {'command': 'support'},
      \ 'db/seeds.rb': {'command': 'seeds'}}

let g:rails_gem_projections = {
      \ "factory_girl_rails": {
      \   "spec/factories.rb": {"command": "factory"},
      \   "spec/factories/*_factory.rb": {
      \     "command": "factory",
      \     "affinity": "model",
      \     "alternate": "app/models/%s.rb",
      \     "related": "db/schema.rb#%p",
      \     "test": "spec/models/%s_spec.rb",
      \     "template": "FactoryGirl.define do\n  factory :%s do\n  end\nend",
      \     "keywords": "factory sequence"
      \   },
      \   "spec/factories/*.rb": {
      \     "command": "factory",
      \     "affinity": "collection",
      \     "alternate": "app/models/%o.rb",
      \     "related": "db/schema.rb#%s",
      \     "test": "spec/models/%o_spec.rb",
      \     "template": "FactoryGirl.define do\n  factory :%o do\n  end\nend",
      \     "keywords": "factory sequence"
      \   },
      \  },
      \ "fabrication": {
      \   "spec/fabricators/*_fabricator.rb": {
      \     "command": "fabricator",
      \     "affinity": "model",
      \     "alternate": "app/models/%s.rb",
      \     "related": "db/schema.rb#%p",
      \     "test": "spec/models/%s_spec.rb",
      \     "template": "Fabricator(:%s) do\nend",
      \     "keywords": "sequence initialize_with on_init transient after_build before_validation after_validation before_save before_create after_create after_save"
      \   },
      \ },
      \ "draper": {
      \   "app/decorators/*_decorator.rb": {
      \     "command": "decorator",
      \     "affinity": "model",
      \     "test": "spec/decorators/%s_spec.rb",
      \     "related": "app/models/%s.rb",
      \     "template": "class %SDecorator < Draper::Decorator\nend"
      \   }
      \ },
      \ "cucumber-rails": {
      \   "features/*.feature": {"command": "feature"},
      \   "features/step_definitions/*_steps.rb": {"command": "steps"},
      \   "features/support/*.rb": {"command": "support"}
      \ },
      \ "active_model_serializers": {
      \   "app/serializers/*_serializer.rb": {
      \     "command": "serializer",
      \     "affinity": "model",
      \     "test": "spec/serializers/%s_spec.rb",
      \     "related": "app/models/%s.rb",
      \     "template": "class %SSerializer < ActiveModel::Serializer\n  attributes :id\nend",
      \     "keywords": "attributes embed has_many has_one"
      \   }
      \ }}
