
// 각 버튼에 이벤트 리스너 추가
document.getElementById('ufo-home').addEventListener('click', function () {
    showContent('content-trophies');
});

document.getElementById('ufo-videos').addEventListener('click', function () {
    showContent('content-points');
});

document.getElementById('ufo-images').addEventListener('click', function () {
    showContent('content-posts');
});

document.getElementById('ufo-about').addEventListener('click', function () {
    showContent('content-about');
});

// 탭 메뉴 관련 이벤트
document.getElementById('정보수정').addEventListener('click', function () {
    showTab('정보수정');
});

document.getElementById('게시물').addEventListener('click', function () {
    showTab('게시물');
});

document.getElementById('팔로워').addEventListener('click', function () {
    showTab('팔로워');
});

document.getElementById('팔로잉').addEventListener('click', function () {
    showTab('팔로잉');
});

// 프로필 사진 클릭 시 파일 선택 창 열기
document.getElementById('profile-pic').addEventListener('click', function () {
    document.getElementById('upload-profile-pic').click();
});

// 파일 선택 후 미리보기 이미지 변경
document.getElementById('upload-profile-pic').addEventListener('change', function (event) {
    const file = event.target.files[0];
    if (file) {
        const reader = new FileReader();
        reader.onload = function (e) {
            document.getElementById('profile-pic').src = e.target.result;
        };
        reader.readAsDataURL(file);
    }
});
