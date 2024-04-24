<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Movie Mate</title>
    <%@ include file="include/header-static.jsp"%>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/assets/css/mypage.css">
</head>
<body>
<%@ include file="include/header.jsp"%>

<!-- 중앙 내 정보 -->
    <main>
        <div class="container">
           <div class="profile-contents">
            <div class="profile-box">
            <img src="${sessionScope.login.profile}" alt="프사" >
            </div>
            <div class="description">
                <h3>${sessionScope.login.email}</h3>
                <h1>${sessionScope.login.nickName}</h1>
                <p>님의 마이페이지</p>
            </div>
           </div>
        </div>
    </main>



    <div>
        <div class="content-list">
            <h1>내가 찜한 영화</h1>

            <div class="swiper-container">
                <div class="swiper-wrapper">

                    <div class="swiper-slide">
                        <a href="detail_page.html">
                            <div class="slide-inner">
                                <img src="https://via.placeholder.com/240x360" alt="Poster 1">
                            </div>
                            <div class="slide-inner">
                                <img src="https://via.placeholder.com/240x360" alt="Poster 2">
                            </div>
                            <div class="slide-inner">
                                <img src="https://via.placeholder.com/240x360" alt="Poster 3">
                            </div>
                            <div class="slide-inner">
                                <img src="https://via.placeholder.com/240x360" alt="Poster 4">
                            </div>
                        </a>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 4">
                        </div>
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 5">
                        </div>
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 6">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 7">
                        </div>
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 8">
                        </div>
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 9">
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="slide-inner">
                            <img src="https://via.placeholder.com/240x360" alt="Poster 10">
                        </div>
                    </div>
                </div>
                <div class="swiper-button-prev"></div>
                <div class="swiper-button-next"></div>
            </div>
        </div>
    </div>

    <div class="review-list">
        <h1>내가 쓴 후기</h1>
         <div class="swiper review-swiper-custom">
              <div class="swiper-wrapper">

              <% for(int i=0;i<10;i++)  { %>
                    <div class="swiper-slide review-swiper review-box" data-index="<%= i %>">
                           <div class="review-container">
                                  <div class="review-profile">
                                        <div class="review-profile-img">

                                            <p style="margin-left:5px; color:black;">영화명</p>
                                        </div>
                                        <div class="review-profile-grade">
                                            <p>★<p>
                                            <p style="margin-left:5px; color:black;">5.0</p>
                                        </div>
                                  </div>
                                  <hr/>
                                  <div class="review-text">
                                        <p style="color:#aaa !important;">리뷰 글입니다. 재밌고 슬프고 신나는 ㅁㄴㅇㅁㄴ ㅇㅁㄴ 으매ㅏ눌ㅇㅁ낭
                                         ㅁㅇㄴㅁㄴㅇㅁㄴㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㅁㄴㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇㄴㅁㅇ영화이고 어쩌구 저쩌구 어쩌구 저쩌구 ~~어쩌구 저쩌구~ 어쩌구 저쩌구~ 어쩌구 저쩌구~ 어쩌구 저쩌구~<%=i%></p>
                                  </div>
                                  <hr/>
                                  <div class="review-sym">
                                      <div class="sym-box">
                                          <svg class="thumb" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 512 512"><!--!Font Awesome Free 6.5.2 by @fontawesome - https://fontawesome.com License - https://fontawesome.com/license/free Copyright 2024 Fonticons, Inc.--><path d="M313.4 32.9c26 5.2 42.9 30.5 37.7 56.5l-2.3 11.4c-5.3 26.7-15.1 52.1-28.8 75.2H464c26.5 0 48 21.5 48 48c0 18.5-10.5 34.6-25.9 42.6C497 275.4 504 288.9 504 304c0 23.4-16.8 42.9-38.9 47.1c4.4 7.3 6.9 15.8 6.9 24.9c0 21.3-13.9 39.4-33.1 45.6c.7 3.3 1.1 6.8 1.1 10.4c0 26.5-21.5 48-48 48H294.5c-19 0-37.5-5.6-53.3-16.1l-38.5-25.7C176 420.4 160 390.4 160 358.3V320 272 247.1c0-29.2 13.3-56.7 36-75l7.4-5.9c26.5-21.2 44.6-51 51.2-84.2l2.3-11.4c5.2-26 30.5-42.9 56.5-37.7zM32 192H96c17.7 0 32 14.3 32 32V448c0 17.7-14.3 32-32 32H32c-17.7 0-32-14.3-32-32V224c0-17.7 14.3-32 32-32z"/></svg>
                                           <p class="thumb-cnt">100</p>
                                      </div>
                                  </div>
                           </div>
                     </div>
                   <% } %>
              </div>
              <div class="swiper-button-prev"></div>
              <div class="swiper-button-next"></div>
         </div>
    </div>

    <!-- 리뷰 모달 -->
        <div id="reviewModal" class="modal">
          <div class="modal-content">
              <span class="close" onclick="closeReviewModal()">&times;</span>
              <h2 style="margin-bottom:10px;">리뷰 상세보기</h2>
              <hr/>

              <div id="reviewContent" class="review-content"></div>

         <div class="button-group">

                 <button class="delete-button" onclick="deleteReview(event)">삭제</button>
                 <button class="edit-button" onclick="editReview()">수정</button>
             </div>
         </div>
      </div>



<%@ include file="include/footer.jsp"%>

    <script>

        new Swiper('.swiper-container', {
            speed: 800, // 슬라이드 속도
            slidesPerView: 1, // 한 번에 보여질 슬라이드 수
            spaceBetween: 10, // 이미지 간격
            loop: false, // 슬라이드 루프 설정 비활성화
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        new Swiper('.review-swiper-custom', {
                    speed: 800, // 슬라이드 속도
                    slidesPerView: 5, // 한 번에 보여질 슬라이드 수
                    spaceBetween: 10, // 이미지 간격
                    loop: false, // 슬라이드 루프 설정 비활성화
                    navigation: {
                        nextEl: '.review-swiper-custom .swiper-button-next',
                        prevEl: '.review-swiper-custom .swiper-button-prev',
                    },
                });


            const swiperSlides = document.querySelectorAll('.swiper-slide');
            swiperSlides.forEach(function(slide) {
                slide.addEventListener('click', function(event) {

                    console.log('클릭된 슬라이드:', event.currentTarget);
                });
            });

                // 닫기
                function closeReviewModal() {
                    var modal = document.getElementById("reviewModal");
                    modal.style.display = "none";
                }

                // 리뷰 박스 클릭 이벤트 등록
                var reviewBoxes = document.querySelectorAll('.review-box');
                reviewBoxes.forEach(function(box) {
                // 리뷰 텍스트 요소만 이벤트를 등록하도록 변경
                    var reviewText = box.querySelector('.review-text');
                    reviewText.addEventListener('click', function(event) {
                        var index = box.getAttribute('data-index');
                        openReviewModal(index);
                        event.stopPropagation(); // 부모 요소의 클릭 이벤트 막기
                    });
                });


                // 모달 열때 내용 보여주기
                function openReviewModal(index) {
                    var reviewContent = document.querySelector('.swiper-slide[data-index="' + index + '"] .review-text').textContent;
                    document.getElementById("reviewContent").innerHTML = reviewContent;
                    var modal = document.getElementById("reviewModal");
                    modal.style.display = "block";
                }

                    // 삭제 버튼 클릭 이벤트 핸들러
                    function deleteReview(event) {
                        var result = confirm("정말로 삭제하시겠습니까?");
                        // 확인 버튼을 눌렀을 때
                        if (result) {
                            console.log("삭제되었습니다."); //
                        } else {
                            console.log("삭제가 취소되었습니다.");
                        }
                    }


                    // 수정 버튼 클릭 시 폼창 맹글기
                    function editReview() {
                        var reviewText = document.querySelector('.review-content');
                        var reviewTextContent = reviewText.textContent.trim();


                        var form = document.createElement('form');
                        form.setAttribute('id', 'editForm');

                        // 텍스트 입력 창
                        var textarea = document.createElement('textarea');
                        textarea.setAttribute('id', 'editTextArea');
                        textarea.textContent = reviewTextContent;

                        // 저장 버튼 생성
                        var saveButton = document.createElement('button');
                        saveButton.textContent = '저장';
                        saveButton.setAttribute('type', 'button');
                        saveButton.classList.add('save-button'); //
                        saveButton.addEventListener('click', function() {
                            var editedText = textarea.value;
                            // 수정된 내용
                            reviewText.textContent = editedText;
                            // 모달 닫기
                            closeReviewModal();
                        });

                        // 모달 창 내용 교체
                        reviewText.innerHTML = '';
                        reviewText.appendChild(form);
                        form.appendChild(textarea);
                        form.appendChild(saveButton);

                        // 수정 버튼 및 삭제 버튼 숨기기
                            var editButton = document.querySelector('.edit-button');
                            var deleteButton = document.querySelector('.delete-button');
                            editButton.classList.add('hidden');
                                deleteButton.classList.add('hidden');
                    }

                    // 닫기
                    function closeReviewModal() {
                        var modal = document.getElementById("reviewModal");
                        modal.style.display = "none";

                        // 삭제 및 수정 버튼 보이기
                        var editButton = document.querySelector('.edit-button');
                        var deleteButton = document.querySelector('.delete-button');
                         editButton.classList.remove('hidden');
                            deleteButton.classList.remove('hidden');
                    }












</script>
</body>
</html>