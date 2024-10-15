import{_ as I}from"./Caret.hnvbzqgq.js";import{B as V}from"./Img.iuunu5c1.js";import{B as C,S as w}from"./index.h076fivy.js";import{S as z}from"./Plus.e1tf1dpc.js";import"./translations.lf9cwm9a.js";import{D as B,v as i,o as g,c as k,a as _,C as r,l as u,k as M,E as f,b as P,x as U,t as N,G as T}from"./runtime-dom.esm-bundler.h3clfjuw.js";import{_ as G}from"./_plugin-vue_export-helper.oebm7xum.js";import{_ as o}from"./default-i18n.hohxoesu.js";const a="all-in-one-seo-pack";let n={};const p={emits:["update:modelValue"],components:{BaseButton:I,BaseImg:V,BaseInput:C,SvgCirclePlus:z,SvgTrash:w},props:{baseSize:{type:String,default:"medium"},imgPreviewMaxHeight:{type:String,default:"525px"},imgPreviewMaxWidth:{type:String,default:"525px"},description:String,modelValue:{type:String,default:""}},data(){return{strings:{description:o("Minimum size: 112px x 112px, The image must be in JPG, PNG, GIF, SVG, or WEBP format.",a),pasteYourImageUrl:o("Paste your image URL or select a new image",a),remove:o("Remove",a),uploadOrSelectImage:o("Upload or Select Image",a)}}},computed:{iconWidth(){return this.baseSize==="small"?"16":"20"}},methods:{setImgSrc(e){this.$emit("update:modelValue",e)},openUploadModal(){n=window.wp.media({title:o("Choose Image",a),button:{text:o("Choose Image",a)},multiple:!1}),n.on("select",()=>{const e=n.state().get("selection").first().toJSON();this.setImgSrc((e==null?void 0:e.url)||null)}),n.on("close",()=>{n.detach()}),this.$nextTick(()=>{n.open()})}}},S=()=>{B(e=>({"1308d964":e.imgPreviewMaxHeight,e4552c2e:e.imgPreviewMaxWidth}))},v=p.setup;p.setup=v?(e,t)=>(S(),v(e,t)):S;const L={class:"image-upload"},W=["innerHTML"];function H(e,t,s,A,c,l){const h=i("svg-trash"),d=i("base-button"),x=i("base-input"),b=i("svg-circle-plus"),y=i("base-img");return g(),k("div",{class:T(["aioseo-image-uploader",{"aioseo-image-uploader--has-image":!!s.modelValue}])},[_("div",L,[r(x,{size:s.baseSize,modelValue:s.modelValue,placeholder:c.strings.pasteYourImageUrl,onChange:t[1]||(t[1]=m=>l.setImgSrc(m))},{"append-icon":u(()=>[s.modelValue?(g(),M(d,{key:0,size:s.baseSize,class:"remove-image",type:"gray",onClick:t[0]||(t[0]=f(m=>l.setImgSrc(null),["prevent"]))},{default:u(()=>[r(h,{width:l.iconWidth},null,8,["width"])]),_:1},8,["size"])):P("",!0)]),_:1},8,["size","modelValue","placeholder"]),r(d,{size:s.baseSize,class:"insert-image",type:"black",onClick:t[2]||(t[2]=f(m=>l.openUploadModal(),["prevent"]))},{default:u(()=>[r(b,{width:"14"}),U(" "+N(c.strings.uploadOrSelectImage),1)]),_:1},8,["size"])]),_("div",{class:"aioseo-description",innerHTML:s.description||c.strings.description},null,8,W),r(y,{class:"image-preview",src:s.modelValue},null,8,["src"])],2)}const q=G(p,[["render",H],["__scopeId","data-v-e04c452c"]]);export{q as C};
