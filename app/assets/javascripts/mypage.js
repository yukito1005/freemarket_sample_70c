$(function(){
  //お知らせ・やることリスト
  let InfoTodoTabs = $(".info-todo-tab");
  InfoTodoTabs.click(InfoTodoTabSwitch);

  // クラスの切り替えをtabSwitch関数で定義
  function InfoTodoTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.info-todo-tab').removeClass("active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = InfoTodoTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".info-todo_content").removeClass("show").eq(index).addClass("show");
  }

  //取引中・過去の取引
  let PurchaseTabs = $(".purchase-tab");
  PurchaseTabs.click(PurchaseTabSwitch);
  
  // クラスの切り替えをtabSwitch関数で定義
  function PurchaseTabSwitch() {
    // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
    $('.purchase-tab').removeClass("active");

    // クリックしたタブにactiveクラスを追加
    $(this).addClass("active");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = PurchaseTabs.index(this);

    // クリックしたタブに対応するshowクラスを追加する
    $(".purchase_content").removeClass("show").eq(index).addClass("show");
  }
  
  //side
  let SideNav = $(".l-container__side__mypage-nav li");
  SideNav.click(SideNavSwitch);
  
  function SideNavSwitch() {
    // アクティブになっているものをすべて初期化の状態に戻す
    $('.active').removeClass("active");
    $('.show').removeClass("show");
    $('.initialize-active').addClass("active");
    $('.initialize-show').addClass("show");

    // 何番目の要素がクリックされたかを、配列tabsから要素番号を取得
    const index = SideNav.index(this);
    if(index != 4  && index!=18){
      // 全てのactiveクラスのうち、最初の要素を削除（"[0]は、最初の要素の意味"）
      $('.mypage-nav-list-item').removeClass("active");
      $('.l-container__content').removeClass("show");
      // クリックしたタブにactiveクラスを追加
      $(this).addClass("active");
      
      //content変数に全ての.l-container__contentの配列を取得する
      let content = $(".l-container__content");
      
      //content変数の中にindexの番号とcontentの同じ配列番号にside-nav-active-show-contentを追加する
      $(content).eq(index).addClass("show");
      $(window).scrollTop(0);
    }else{
      let href = $(this).children('a').attr('href');
      // 現在のタブで開く
      location.href = href;
    };
  };
  $('.btn').click(function(){
    // クリックしたタブに対応するcredit-activeクラスを追加する
    $(".l-container__content__credit").removeClass("active").eq(1).addClass("active");
  });
});

