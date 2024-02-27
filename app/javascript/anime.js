const anime = () => {
  // カップルイメージ
  const coupleImage = document.getElementById('coupleImage');
  coupleImage.style.transition = 'opacity 15s';
  coupleImage.style.opacity = 1;

  // トップページでない場合は早期リターン
  if (!isTopPage()) {
    return;
  }

  const curtain = document.createElement("div");
  curtain.classList.add("curtain");
  curtain.innerHTML = `
    <div class="top-curtain"></div>
    <div class="bottom-curtain"></div>`;
  document.body.appendChild(curtain);

  setTimeout(() => {
    curtain.style.animation = "none";
    curtain.offsetHeight;
    curtain.style.animation = null;
  }, parseInt(getComputedStyle(document.documentElement).getPropertyValue('--animation-duration')) * 1000);
};

const isTopPage = () => {
  // トップページの条件に合わせて判定する
  // 例えば、URLや特定のDOM要素の有無など
  return window.location.pathname === '/' || document.getElementById('topPageIdentifier');
};

// turbo:load イベント時だけ anime 関数を呼び出す
window.addEventListener("turbo:load", anime);

// turbo:render イベント時は条件分岐により anime 関数を呼び出す
window.addEventListener("turbo:render", function(event) {
  if (event.data && event.data.timing && event.data.timing.visitStart) {
    // turbo:render イベントが visitStart 時に発生する場合のみ anime 関数を呼び出す
    anime();
  }
});