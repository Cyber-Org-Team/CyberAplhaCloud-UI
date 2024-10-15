import{u as k}from"./index.nsvc8vqf.js";import{u as A}from"./PostTypes.d1dx9z99.js";import{B}from"./HighlightToggle.n7i6u2ep.js";import{C as D}from"./Caret.hnvbzqgq.js";import{C as N}from"./Tooltip.jx4casvt.js";import{G as S,a as I}from"./Row.o0q8mn7y.js";import"./translations.lf9cwm9a.js";import{_ as R}from"./_plugin-vue_export-helper.oebm7xum.js";import{_ as u}from"./default-i18n.hohxoesu.js";import{v as d,o as p,c as f,a as s,k as g,l as i,t,x as m,b as y,F as w,J as G,C as x,G as L}from"./runtime-dom.esm-bundler.h3clfjuw.js";const c="all-in-one-seo-pack",O={setup(){const{getPostIconClass:e}=A();return{getPostIconClass:e,rootStore:k()}},components:{BaseHighlightToggle:B,CoreAlert:D,CoreTooltip:N,GridColumn:S,GridRow:I},props:{type:{type:String,required:!0},options:{type:Object,required:!0},registeredPostTypes:Object,excluded:{type:Array,default(){return[]}}},data(){return{strings:{label:u("Label:",c),name:u("Slug:",c),noPostTypes:u("No post types available.",c),noTaxonomies:u("No taxonomies available.",c),noPostTypesDescription:u("All post types are set to noindex or your site does not have any post types registered that are supported by this feature.",c),noTaxonomiesDescription:u("All taxonomies are set to noindex or your site does not have any taxonomies registered that are supported by this feature.",c)}}},computed:{getRegisteredPostTypes(){return this.registeredPostTypes||this.rootStore.aioseo.postData},postTypes(){return this.getRegisteredPostTypes[this.type].filter(e=>!this.excluded.includes(e.name))}},methods:{emitInput(e){this.$emit("input",e)},updateValue(e,_){if(e){const a=this.options[this.type].included;a.push(_.name),this.options[this.type].included=a;return}const n=this.options[this.type].included.findIndex(a=>a===_.name);n!==-1&&this.options[this.type].included.splice(n,1)},getValue(e){return this.options[this.type].included.includes(e.name)},isActive(e){return this.options[this.type].included.findIndex(n=>n===e.name)!==-1}}},U={class:"aioseo-post-type-options-toggle"},j={class:"post-type-options-settings"},q={class:"aioseo-description"},z=s("br",null,null,-1);function F(e,_,n,a,l,r){const h=d("core-alert"),T=d("core-tooltip"),b=d("base-highlight-toggle"),C=d("grid-column"),v=d("grid-row");return p(),f("div",U,[s("div",j,[r.postTypes.length===0&&n.type==="postTypes"?(p(),g(h,{key:0,type:"blue"},{default:i(()=>[s("strong",null,t(l.strings.noPostTypes),1),m(" "+t(l.strings.noPostTypesDescription),1)]),_:1})):y("",!0),r.postTypes.length===0&&n.type==="taxonomies"?(p(),g(h,{key:1,type:"blue"},{default:i(()=>[s("strong",null,t(l.strings.noTaxonomies),1),m(" "+t(l.strings.noTaxonomiesDescription),1)]),_:1})):y("",!0),0<r.postTypes.length?(p(),g(v,{key:2},{default:i(()=>[(p(!0),f(w,null,G(r.postTypes,(o,P)=>(p(),g(C,{md:"6",key:P},{default:i(()=>[x(b,{size:"medium",active:r.isActive(o),name:o.name,type:"checkbox",modelValue:r.getValue(o),"onUpdate:modelValue":V=>r.updateValue(V,o)},{default:i(()=>[x(T,null,{tooltip:i(()=>[s("div",q,[m(t(l.strings.label)+" ",1),s("strong",null,t(o.label),1),z,m(" "+t(l.strings.name)+" ",1),s("strong",null,t(o.name),1)])]),default:i(()=>[s("span",{class:L(["icon dashicons",a.getPostIconClass(o.icon)])},null,2)]),_:2},1024),m(" "+t(o.label),1)]),_:2},1032,["active","name","modelValue","onUpdate:modelValue"])]),_:2},1024))),128))]),_:1})):y("",!0)])])}const $=R(O,[["render",F]]);export{$ as C};
