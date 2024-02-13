// DOMContentLoaded イベントが発生したときに実行される関数
document.addEventListener("DOMContentLoaded", function () {
  // 正方形のサイズとスペーシングの設定
  const squareSize = 100;
  const spacing = 240;

  // tableContainer というクラスを持つ要素を取得
  const tableContainer = document.querySelector('.table-container');

  // アルファベットを生成する関数
  function generateAlphabet(index) {
    return String.fromCharCode(65 + index);
  }

  // 正方形を作成し、指定された座標とアルファベットで配置する関数
  function createSquare(x, y, alphabet) {
    // 正方形要素を生成
    const square = document.createElement('div');
    square.className = 'square';
    square.textContent = alphabet;

    // 正方形の位置を設定
    square.style.position = 'absolute';
    square.style.left = `${x}px`;
    square.style.top = `${y}px`;
    // 正方形を tableContainer に追加
    tableContainer.appendChild(square);
  }

  // 名前入力欄を作成し、指定された座標に配置する関数
  function createNameInput(x, y) {
    // 名前入力欄の親要素を生成
    const nameContainer = document.createElement('div');
    nameContainer.className = 'name-container';
    nameContainer.style.width = `${squareSize}px`;
    nameContainer.style.top = `${y}px`;
    nameContainer.style.left = `${x + squareSize + 10}px`;

    // ゲスト4から6までの名前入力欄を生成
    for (let i = 4; i <= 6; i++) {
      const input = document.createElement('input');
      input.type = 'text';
      input.placeholder = `Guest ${i}`;
      input.className = 'name-input';

      // 名前入力欄を親要素に追加
      nameContainer.appendChild(input);
    }

    // 左側の名前入力欄の親要素を生成
    const nameContainerLeft = document.createElement('div');
    nameContainerLeft.className = 'name-container';
    nameContainerLeft.style.width = `${squareSize}px`;
    nameContainerLeft.style.top = `${y}px`;
    nameContainerLeft.style.left = `${x - squareSize - 10}px`;

    // ゲスト1から3までの名前入力欄を生成
    for (let i = 1; i <= 3; i++) {
      const input = document.createElement('input');
      input.type = 'text';
      input.placeholder = `Guest ${i}`;
      input.className = 'name-input';

      // 左側の名前入力欄を親要素に追加
      nameContainerLeft.appendChild(input);
    }

    // 生成した名前入力欄をコンテナに追加
    tableContainer.appendChild(nameContainer);
    tableContainer.appendChild(nameContainerLeft);
  }

  // 4x4の正方形を配置するループ
  for (let i = 0; i < 4; i++) {
    for (let j = 0; j < 4; j++) {
      // 正方形の座標およびアルファベットを生成
      const x = i * (squareSize + spacing) - 1.5 * (squareSize + spacing);
      const y = j * (squareSize + spacing) - 1.5 * (squareSize + spacing);
      const alphabet = generateAlphabet(j * 4 + i);

      // 正方形と名前入力欄を生成
      createSquare(x, y, alphabet);
      createNameInput(x, y);
    }
  }
});
