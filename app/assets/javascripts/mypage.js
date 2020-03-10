$(function(){
  //お知らせ・やることリスト
  let InfoTodoTabs = $(".info-todo-tab");
  InfoTodoTabs.click(InfoTodoTabSwitch);

  // クラスの切り替えをtabSwitch関数で定義
  function InfoTodoTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.info-todo_active').removeClass("info-todo_active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("info-todo_active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = InfoTodoTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".info-todo_content").removeClass("info-todo_show").eq(index).addClass("info-todo_show");
  }

  //取引中・過去の取引
  let PurchaseTabs = $(".purchase-tab");
  PurchaseTabs.click(PurchaseTabSwitch);

  // クラスの切り替えをtabSwitch関数で定義
  function PurchaseTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.purchase_active').removeClass("purchase_active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("purchase_active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = PurchaseTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".purchase_content").removeClass("purchase_show").eq(index).addClass("purchase_show");
  }
  
  $('.l-container__side__mypage-nav li').click(function(){
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.nav-active').removeClass("nav-active");
    // クリックしたタブにactiveクラスを追加
    $(this).addClass("nav-active");

    let href = $(this).children('a').attr('href');
    // 現在のタブで開く
    location.href = href;
    // 新しいタブで開く
    // window.open(href);
  });
});

