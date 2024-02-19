// <!-- app/views/seatings/new.html.erb -->
// <h1>Seating Setup</h1>

// <%= form_with(model: @initial_setup, url: seatings_create_path, method: :post) do |form| %>
//   <!-- 1. テーブルの数 -->
//   <%= form.label :table_count, 'テーブルの数は何卓にしますか？', class: 'label-style' %>
//   <%= form.select :table_count, (1..15).to_a, {}, class: 'table-count select-style' %>

//   <!-- 2. 1テーブルあたりの人数 -->
//   <%= form.label :guests_per_table, '1テーブルあたりのゲストの人数は何名ですか？', class: 'label-style hidden', id: 'guests-per-table-label' %>
//   <%= form.select :guests_per_table, (1..8).to_a, {}, class: 'hidden', id: 'guests-per-table' %>

//   <!-- 3. テーブルの配置は何列にしますか？ -->
//   <%= form.label :num_of_columns, 'テーブルの配置は何列にしますか？', class: 'label-style hidden', id: 'num-of-columns-label' %>
//   <%= form.select :num_of_columns, (1..5).to_a, {}, class: 'hidden', id: 'num-of-columns' %>

//   <!-- ダイナミックに表示されるテーブルの数の入力フォーム -->
//   <div id="table-inputs"></div>

//   <%= form.submit 'Create Seatings' %>
// <% end %>

// <script>
//   document.addEventListener('DOMContentLoaded', function () {
//     const tableCountSelect = document.querySelector('.table-count');
//     const guestsPerTableLabel = document.getElementById('guests-per-table-label');
//     const guestsPerTableSelect = document.getElementById('guests-per-table');
//     const numOfColumnsLabel = document.getElementById('num-of-columns-label');
//     const numOfColumnsSelect = document.getElementById('num-of-columns');
//     const tableInputsContainer = document.getElementById('table-inputs');

//     guestsPerTableLabel.style.display = 'none';
//     guestsPerTableSelect.style.display = 'none';
//     numOfColumnsLabel.style.display = 'none';
//     numOfColumnsSelect.style.display = 'none';

//     tableCountSelect.addEventListener('change', function () {
//       guestsPerTableLabel.style.display = 'block';
//       guestsPerTableSelect.style.display = 'block';
//     });

//     guestsPerTableSelect.addEventListener('change', function () {
//       numOfColumnsLabel.style.display = 'block';
//       numOfColumnsSelect.style.display = 'block';
//       updateTableInputs();
//     });

//     numOfColumnsSelect.addEventListener('change', function () {
//       updateTableInputs();
//     });

//     function updateTableInputs() {
//       tableInputsContainer.innerHTML = ''; // Reset the container

//       const numOfColumns = parseInt(numOfColumnsSelect.value);
//       const remainingTables = tableCountSelect.value;

//       for (let i = 1; i <= numOfColumns; i++) {
//         const tablesLabel = document.createElement('label');
//         tablesLabel.textContent = `列 ${i} のテーブル数は？`;
//         tablesLabel.className = 'label-style';
//         tableInputsContainer.appendChild(tablesLabel);

//         const tablesSelect = document.createElement('select');
//         tablesSelect.name = `tables_in_column_${i}`;
//         tablesSelect.className = 'hidden'; // Initially hidden
//         tableInputsContainer.appendChild(tablesSelect);

//         // Populate the options based on remaining tables
//         for (let j = 1; j <= remainingTables; j++) {
//           const option = document.createElement('option');
//           option.value = j;
//           option.textContent = j;
//           tablesSelect.appendChild(option);
//         }

//         // Add an event listener to show the input when the column count changes
//         numOfColumnsSelect.addEventListener('change', function () {
//           tablesLabel.style.display = 'none';
//           tablesSelect.style.display = 'none';
//           updateTableInputs();
//         });

//         // Add an event listener to show the input when the guests per table changes
//         guestsPerTableSelect.addEventListener('change', function () {
//           tablesLabel.style.display = 'none';
//           tablesSelect.style.display = 'none';
//           updateTableInputs();
//         });
//       }
//     }
//   });
// </script>




























<!-- app/views/seatings/new.html.erb -->
<h1>Seating Setup</h1>

<%= form_with(model: @initial_setup, url: seatings_create_path, method: :post) do |form| %>
  <!-- 1. テーブルの数 -->
  <%= form.label :table_count, 'テーブルの数は何卓にしますか？', class: 'label-style' %>
  <%= form.select :table_count, (1..15).to_a, {}, class: 'table-count select-style' %>

  <!-- 2. 1テーブルあたりの人数 -->
  <%= form.label :guests_per_table, '1テーブルあたりのゲストの人数は何名ですか？', class: 'label-style hidden', id: 'guests-per-table-label' %>
  <%= form.select :guests_per_table, (1..8).to_a, {}, class: 'hidden', id: 'guests-per-table' %>

  <!-- 3. テーブルの配置は何列にしますか？ -->
  <%= form.label :num_of_columns, 'テーブルの配置は何列にしますか？', class: 'label-style hidden', id: 'num-of-columns-label' %>
  <%= form.select :num_of_columns, (1..5).to_a, {}, class: 'hidden', id: 'num-of-columns' %>

  <!-- 4. 1列目のテーブルの数 -->
  <%= form.label :first_row_tables, '1列目のテーブルの数は？', class: 'label-style hidden', id: 'first-row-tables-label' %>
  <%= form.select :first_row_tables, (1..15).to_a, {}, class: 'hidden', id: 'first-row-tables' %>

  <!-- 5. 2列目のテーブルの数 -->
  <%= form.label :second_row_tables, '2列目のテーブルの数は？', class: 'label-style hidden', id: 'second-row-tables-label' %>
  <%= form.select :second_row_tables, (1..15).to_a, {}, class: 'hidden', id: 'second-row-tables' %>

  <!-- 6. 3列目のテーブルの数 -->
  <%= form.label :third_row_tables, '3列目のテーブルの数は？', class: 'label-style hidden', id: 'third-row-tables-label' %>
  <%= form.select :third_row_tables, (1..15).to_a, {}, class: 'hidden', id: 'third-row-tables' %>

  <!-- 7. 4列目のテーブルの数（自動計算） -->
  <%= form.label :fourth_row_tables, '4列目のテーブルの数は？', class: 'label-style hidden', id: 'fourth-row-tables-label' %>
  <%= form.select :fourth_row_tables, (1..15).to_a, {}, class: 'hidden', id: 'fourth-row-tables' %>

  <%= form.submit 'Create Seatings' %>
<% end %>
<script>
  document.addEventListener('DOMContentLoaded', function () {
    // フォームの各要素を取得
    const tableCountSelect = document.querySelector('.table-count');
    const guestsPerTableLabel = document.getElementById('guests-per-table-label');
    const guestsPerTableSelect = document.getElementById('guests-per-table');
    const numOfColumnsLabel = document.getElementById('num-of-columns-label');
    const numOfColumnsSelect = document.getElementById('num-of-columns');
    const firstRowTablesLabel = document.getElementById('first-row-tables-label');
    const firstRowTablesSelect = document.getElementById('first-row-tables');
    const secondRowTablesLabel = document.getElementById('second-row-tables-label');
    const secondRowTablesSelect = document.getElementById('second-row-tables');
    const thirdRowTablesLabel = document.getElementById('third-row-tables-label');
    const thirdRowTablesSelect = document.getElementById('third-row-tables');
    const fourthRowTablesLabel = document.getElementById('fourth-row-tables-label');
    const fourthRowTablesSelect = document.getElementById('fourth-row-tables');

    // 各要素を非表示に設定
    guestsPerTableLabel.style.display = 'none';
    guestsPerTableSelect.style.display = 'none';
    numOfColumnsLabel.style.display = 'none';
    numOfColumnsSelect.style.display = 'none';
    firstRowTablesLabel.style.display = 'none';
    firstRowTablesSelect.style.display = 'none';
    secondRowTablesLabel.style.display = 'none';
    secondRowTablesSelect.style.display = 'none';
    thirdRowTablesLabel.style.display = 'none';
    thirdRowTablesSelect.style.display = 'none';
    fourthRowTablesLabel.style.display = 'none';
    fourthRowTablesSelect.style.display = 'none';

    // テーブル数の変更時のイベントリスナー
    tableCountSelect.addEventListener('change', function () {
      guestsPerTableLabel.style.display = 'block';
      guestsPerTableSelect.style.display = 'block';
    });

    // ゲスト数の変更時のイベントリスナー
    guestsPerTableSelect.addEventListener('change', function () {
      numOfColumnsLabel.style.display = 'block';
      numOfColumnsSelect.style.display = 'block';
      // 最大値を5に設定してテーブルの列数を選択
      updateTableOptions(numOfColumnsSelect, 5);
    });

    // 列数の変更時のイベントリスナー
    numOfColumnsSelect.addEventListener('change', function () {
      // 1列目のテーブル数を設定
      firstRowTablesLabel.style.display = 'block';
      firstRowTablesSelect.style.display = 'block';
      updateTableOptions(firstRowTablesSelect, tableCountSelect.value);
    });

    // 1列目のテーブル数変更時のイベントリスナー
    firstRowTablesSelect.addEventListener('change', function () {
      // 2列目のテーブル数を設定
      secondRowTablesLabel.style.display = 'block';
      secondRowTablesSelect.style.display = 'block';
      updateTableOptions(secondRowTablesSelect, tableCountSelect.value - firstRowTablesSelect.value);
    });

    // 2列目のテーブル数変更時のイベントリスナー
    secondRowTablesSelect.addEventListener('change', function () {
      // 3列目のテーブル数を設定
      thirdRowTablesLabel.style.display = 'block';
      thirdRowTablesSelect.style.display = 'block';
      updateTableOptions(thirdRowTablesSelect, tableCountSelect.value - firstRowTablesSelect.value - secondRowTablesSelect.value);
    });

    // 3列目のテーブル数変更時のイベントリスナー
    thirdRowTablesSelect.addEventListener('change', function () {
      // 4列目のテーブル数を設定
      fourthRowTablesLabel.style.display = 'block';
      fourthRowTablesSelect.style.display = 'block';
      updateTableOptions(fourthRowTablesSelect, tableCountSelect.value - firstRowTablesSelect.value - secondRowTablesSelect.value - thirdRowTablesSelect.value);
    });

    // テーブル数選択プルダウンの選択肢を更新する関数
    function updateTableOptions(selectElement, maxValue) {
      selectElement.innerHTML = "";
      // 選択肢を1から最大値まで作成
      for (let i = 1; i <= maxValue; i++) {
        const option = document.createElement('option');
        option.value = i;
        option.textContent = i;
        selectElement.appendChild(option);
      }
    }
  });
</script>