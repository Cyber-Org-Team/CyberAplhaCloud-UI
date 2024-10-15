import{G as T}from"./constants.fxxegv78.js";import{i as O,a as G,u as I}from"./index.nsvc8vqf.js";import{u as L}from"./JsonValues.g6ep3o3z.js";import{B}from"./RadioToggle.h9afcyfi.js";import{C as M}from"./RobotsMeta.g6i1lggl.js";import{C as V}from"./SettingsRow.1l1umqn0.js";import"./translations.lf9cwm9a.js";import{_ as C}from"./_plugin-vue_export-helper.oebm7xum.js";import{_ as n,a as v}from"./default-i18n.hohxoesu.js";import{v as u,o as s,c as x,C as m,l as a,k as c,b as r,a as A,x as y,t as h}from"./runtime-dom.esm-bundler.h3clfjuw.js";import{t as j}from"./Editor.k6y9ox0q.js";import{u as D}from"./Tags.oypvqhpf.js";import{C as R}from"./Caret.hnvbzqgq.js";import{C as N}from"./GoogleSearchPreview.o1cj6y7p.js";import{C as E}from"./HtmlTagsEditor.k0zlm7pg.js";const d="all-in-one-seo-pack",P={setup(){const{getJsonValue:g,setJsonValue:o}=L();return{GLOBAL_STRINGS:T,getJsonValue:g,licenseStore:O(),optionsStore:G(),rootStore:I(),setJsonValue:o}},components:{BaseRadioToggle:B,CoreRobotsMeta:M,CoreSettingsRow:V},props:{type:{type:String,required:!0},object:{type:Object,required:!0},options:{type:Object,required:!0},showBulk:Boolean,noMetaBox:Boolean,includeKeywords:Boolean},data(){return{titleCount:0,descriptionCount:0,strings:{robotsSetting:n("Robots Meta Settings",d),bulkEditing:n("Bulk Editing",d),readOnly:n("Read Only",d),otherOptions:n("Other Options",d),showDateInGooglePreview:n("Show Date in Google Preview",d),keywords:n("Keywords",d),removeCategoryBase:n("Remove Category Base Prefix",d)}}},computed:{title(){return v(n("%1$s Title",d),this.object.singular)},showPostThumbnailInSearch(){return v(n("Show %1$s Thumbnail in Google Custom Search",d),this.object.singular)},showMetaBox(){return v(n("Show %1$s Meta Box",d),"AIOSEO")}}},U={class:"aioseo-sa-ct-advanced"},q={class:"other-options"};function J(g,o,e,i,t,w){const S=u("core-robots-meta"),p=u("core-settings-row"),_=u("base-radio-toggle"),k=u("base-toggle"),f=u("base-select");return s(),x("div",U,[m(p,{name:t.strings.robotsSetting},{content:a(()=>[m(S,{options:e.options.advanced.robotsMeta,mainOptions:e.options},null,8,["options","mainOptions"])]),_:1},8,["name"]),e.showBulk?(s(),c(p,{key:0,name:t.strings.bulkEditing,align:""},{content:a(()=>[m(_,{modelValue:e.options.advanced.bulkEditing,"onUpdate:modelValue":o[0]||(o[0]=l=>e.options.advanced.bulkEditing=l),name:`${e.object.name}BulkEditing`,options:[{label:i.GLOBAL_STRINGS.disabled,value:"disabled"},{label:i.GLOBAL_STRINGS.enabled,value:"enabled"},{label:t.strings.readOnly,value:"read-only"}]},null,8,["modelValue","name","options"])]),_:1},8,["name"])):r("",!0),e.type==="taxonomies"&&e.object.name==="category"?(s(),c(p,{key:1,name:t.strings.removeCategoryBase,align:""},{content:a(()=>[m(_,{modelValue:i.optionsStore.options.searchAppearance.advanced.removeCategoryBase,"onUpdate:modelValue":o[1]||(o[1]=l=>i.optionsStore.options.searchAppearance.advanced.removeCategoryBase=l),name:"removeCategoryBase",options:[{label:i.GLOBAL_STRINGS.no,value:!1,activeClass:"dark"},{label:i.GLOBAL_STRINGS.yes,value:!0}]},null,8,["modelValue","options"])]),_:1},8,["name"])):r("",!0),!e.noMetaBox&&(!i.licenseStore.isUnlicensed||e.type!=="taxonomies")?(s(),c(p,{key:2,name:t.strings.otherOptions},{content:a(()=>[A("div",q,[m(k,{modelValue:e.options.advanced.showMetaBox,"onUpdate:modelValue":o[2]||(o[2]=l=>e.options.advanced.showMetaBox=l)},{default:a(()=>[y(h(w.showMetaBox),1)]),_:1},8,["modelValue"])])]),_:1},8,["name"])):r("",!0),i.optionsStore.options.searchAppearance.advanced.useKeywords&&e.includeKeywords?(s(),c(p,{key:3,name:t.strings.keywords,align:""},{content:a(()=>[m(f,{multiple:"",taggable:"",options:i.getJsonValue(e.options.advanced.keywords)||[],modelValue:i.getJsonValue(e.options.advanced.keywords)||[],"onUpdate:modelValue":o[3]||(o[3]=l=>e.options.advanced.keywords=i.setJsonValue(l)),"tag-placeholder":t.strings.tagPlaceholder},null,8,["options","modelValue","tag-placeholder"])]),_:1},8,["name"])):r("",!0)])}const de=C(P,[["render",J]]),b="all-in-one-seo-pack",K={setup(g){const{parseTags:o}=D({separator:g.separator});return{parseTags:o}},components:{BaseRadioToggle:B,CoreAlert:R,CoreGoogleSearchPreview:N,CoreHtmlTagsEditor:E,CoreSettingsRow:V},props:{type:{type:String,required:!0},object:{type:Object,required:!0},separator:{type:String,required:!0},options:{type:Object,required:!0},edit:{type:Boolean,default(){return!0}}},data(){return{GLOBAL_STRINGS:T,tags:j,titleCount:0,descriptionCount:0,strings:{showInSearchResults:n("Show in Search Results",b),clickToAddTitle:n("Click on the tags below to insert variables into your title.",b),metaDescription:n("Meta Description",b),clickToAddDescription:n("Click on the tags below to insert variables into your meta description.",b)}}},watch:{show(g){if(g){this.options.advanced.robotsMeta.noindex=!1,this.options.advanced.robotsMeta.nofollow===!1&&this.options.advanced.robotsMeta.noarchive===!1&&this.options.advanced.robotsMeta.notranslate===!1&&this.options.advanced.robotsMeta.noimageindex===!1&&this.options.advanced.robotsMeta.nosnippet===!1&&this.options.advanced.robotsMeta.noodp===!1&&parseInt(this.options.advanced.robotsMeta.maxSnippet)===-1&&parseInt(this.options.advanced.robotsMeta.maxVideoPreview)===-1&&this.options.advanced.robotsMeta.maxImagePreview.toLowerCase()==="large"&&(this.options.advanced.robotsMeta.default=!0);return}this.options.advanced.robotsMeta.default=!1,this.options.advanced.robotsMeta.noindex=!0}},computed:{title(){return v(n("%1$s Title",b),this.object.singular)},show(){return this.options.show},noIndexDescription(){return v(n('Choose whether your %1$s should be included in search results. If you select "No", then your %1$s will be noindexed and excluded from the sitemap so that search engines ignore them.',b),this.object.label)},noindexAlertDescription(){return v(n("Your %1$s will be noindexed and excluded from the sitemap so that search engines ignore them. You can still control how their page title looks like below.",b),this.object.label)}},methods:{}},Y={class:"aioseo-sa-ct-title-description"},H={class:"aioseo-description"},z={key:0};function F(g,o,e,i,t,w){const S=u("base-radio-toggle"),p=u("core-alert"),_=u("core-settings-row"),k=u("core-google-search-preview"),f=u("core-html-tags-editor");return s(),x("div",Y,[m(_,{name:t.strings.showInSearchResults,align:""},{content:a(()=>[e.edit?(s(),c(S,{key:0,modelValue:e.options.show,"onUpdate:modelValue":o[0]||(o[0]=l=>e.options.show=l),name:`${e.object.name}ShowInSearch`,options:[{label:t.GLOBAL_STRINGS.no,value:!1,activeClass:"dark"},{label:t.GLOBAL_STRINGS.yes,value:!0}]},null,8,["modelValue","name","options"])):r("",!0),e.edit?r("",!0):(s(),c(S,{key:1,modelValue:!0,name:`${e.object.name}ShowInSearch`,options:[{label:t.GLOBAL_STRINGS.no,value:!1,activeClass:"dark"},{label:t.GLOBAL_STRINGS.yes,value:!0}]},null,8,["name","options"])),A("div",H,[e.options.show?(s(),x("span",z,h(w.noIndexDescription),1)):r("",!0),e.options.show?r("",!0):(s(),c(p,{key:1,type:"blue"},{default:a(()=>[y(h(w.noindexAlertDescription),1)]),_:1}))])]),_:1},8,["name"]),e.edit?(s(),c(_,{key:0,name:t.GLOBAL_STRINGS.preview},{content:a(()=>[m(k,{title:i.parseTags(e.options.title),description:i.parseTags(e.options.metaDescription)},null,8,["title","description"])]),_:1},8,["name"])):r("",!0),m(_,{name:w.title},{content:a(()=>[e.edit?(s(),c(f,{key:0,modelValue:e.options.title,"onUpdate:modelValue":o[1]||(o[1]=l=>e.options.title=l),"line-numbers":!1,single:"","tags-context":`${e.object.name}Title`,"default-tags":t.tags.getDefaultTags(e.type,e.object.name,"title")},{"tags-description":a(()=>[y(h(t.strings.clickToAddTitle),1)]),_:1},8,["modelValue","tags-context","default-tags"])):r("",!0),e.edit?r("",!0):(s(),c(f,{key:1,"line-numbers":!1,single:"","tags-context":`${e.object.name}Title`,"default-tags":t.tags.getDefaultTags(e.type,e.object.name,"title")},{"tags-description":a(()=>[y(h(t.strings.clickToAddTitle),1)]),_:1},8,["tags-context","default-tags"]))]),_:1},8,["name"]),e.options.show?(s(),c(_,{key:1,name:t.strings.metaDescription},{content:a(()=>[e.edit?(s(),c(f,{key:0,modelValue:e.options.metaDescription,"onUpdate:modelValue":o[2]||(o[2]=l=>e.options.metaDescription=l),"line-numbers":!1,description:"","tags-context":`${e.object.name}Description`,"default-tags":t.tags.getDefaultTags(e.type,e.object.name,"description")},{"tags-description":a(()=>[y(h(t.strings.clickToAddDescription),1)]),_:1},8,["modelValue","tags-context","default-tags"])):r("",!0),e.edit?r("",!0):(s(),c(f,{key:1,"line-numbers":!1,"tags-context":`${e.object.name}Description`,"default-tags":t.tags.getDefaultTags(e.type,e.object.name,"description")},{"tags-description":a(()=>[y(h(t.strings.clickToAddDescription),1)]),_:1},8,["tags-context","default-tags"]))]),_:1},8,["name"])):r("",!0)])}const ue=C(K,[["render",F],["__scopeId","data-v-2831cfd0"]]);export{de as A,ue as T};