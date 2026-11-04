(()=>{
  'use strict';
  const year=new Date().getFullYear();
  document.querySelectorAll('.year').forEach(el=>{el.textContent=year;});
  const menu=document.querySelector('.menu-btn');
  const nav=document.querySelector('.nav');
  if(menu&&nav){
    menu.addEventListener('click',()=>{
      const open=nav.classList.toggle('open');
      menu.setAttribute('aria-expanded', String(open));
      menu.setAttribute('aria-label',open?'Fechar menu':'Abrir menu');
    });
    nav.querySelectorAll('a').forEach(a=>a.addEventListener('click',()=>{
      nav.classList.remove('open');menu.setAttribute('aria-expanded','false');
    }));
  }
  const search=document.getElementById('method-search');
  const buttons=[...document.querySelectorAll('[data-filter]')];
  const cards=[...document.querySelectorAll('.method-card')];
  const groups=[...document.querySelectorAll('[data-group]')];
  const counter=document.querySelector('.result-counter');
  const empty=document.getElementById('empty-search');
  let filter='all';
  const normal=s=>(s||'').normalize('NFD').replace(/[\u0300-\u036f]/g,'').toLowerCase();
  function updateSearch(){
    if(!cards.length)return;
    const q=normal(search?.value.trim());let found=0;
    cards.forEach(c=>{
      const ok=(filter==='all'||c.dataset.source===filter)&&normal(c.dataset.search).includes(q);
      c.hidden=!ok;if(ok)found++;
    });
    groups.forEach(g=>{g.hidden=![...g.querySelectorAll('.method-card')].some(c=>!c.hidden);});
    if(counter)counter.textContent=`${found} método${found===1?'':'s'} encontrado${found===1?'':'s'}`;
    if(empty)empty.hidden=found!==0;
  }
  search?.addEventListener('input',updateSearch);
  buttons.forEach(b=>b.addEventListener('click',()=>{
    filter=b.dataset.filter;
    buttons.forEach(x=>{x.classList.toggle('active',x===b);x.setAttribute('aria-pressed',String(x===b));});
    updateSearch();
  }));
  updateSearch();
  document.querySelectorAll('.copy-code').forEach(btn=>btn.addEventListener('click',async()=>{
    const el=document.getElementById(btn.dataset.copy);if(!el)return;
    const code=el.textContent;
    try{
      if(navigator.clipboard?.writeText){await navigator.clipboard.writeText(code);}
      else{const ta=document.createElement('textarea');ta.value=code;ta.style.position='fixed';ta.style.opacity='0';document.body.appendChild(ta);ta.select();const ok=document.execCommand('copy');ta.remove();if(!ok)throw new Error('Cópia indisponível');}
      const original=btn.textContent;btn.textContent='Copiado!';
      window.setTimeout(()=>{btn.textContent=original;},1800);
    }catch(e){btn.textContent='Selecione o código para copiar';}
  }));
})();
