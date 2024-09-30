<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<script src="https://unpkg.com/react@17/umd/react.development.js"
	crossorigin></script>
<script
	src="https://unpkg.com/react-dom@17/umd/react-dom.development.js"
	crossorigin></script>
<script src="https://unpkg.com/babel-standalone@6/babel.min.js"></script>
<link rel="stylesheet" href="./assets/css/MyPage.css">

</head>

<body>

	<script type="text/babel">
        const imagePreviewUrl = 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMSEhUTExMVFRUVGBcYFRgVFRUVFRcVFxoXFxUVFRcYHSggGBolGxUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0dHR0tLS0tLS0tLS0rLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0rKzctLS03Ky03N//AABEIAPYAzQMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAEAQIDBQYABwj/xABJEAABAwMBBAcFBAcFBQkAAAABAAIDBBEhBRIxQVEGEyJhcYGRMkKhscFSVJPwBxQjYnLR4hczktLhFSRzgqMlQ1NjZKKywvH/xAAZAQADAQEBAAAAAAAAAAAAAAABAgMABAX/xAAhEQACAgICAwEBAQAAAAAAAAAAAQIREiEDMRNBUTIiBP/aAAwDAQACEQMRAD8A9Nm1S8Jew9oAY35JAR0xuWknd8SVUaNTNFM0uGSBc+B/0RuoROL6c8pCXd42T/op2REoInMdMSb7cvZ7m2AsO5drMrm7NnEb9x8EXD7T+QOPG2UDrg9jz+iSb0FdoB/XpB7xPjlTM1N/Hu42QTki5nNnTii0bqvPa9bqZuotPvHzuqQ80rSiuVgwsv21F9zr+BUhl71nCVIJnDc4jemfKK+Mv+s7/ikfIQOJVKK1/Gx8QoK7V3x2eG7QHtC9scxdMuRPQji0HPnjqGOcHElhdgOLSHAbjbfkLzTpF0gkJzh189suGNwIKH6ZdKOvkLYWCNudpwttOPfZZEyBuBlWp0IW8vSmqYLMqJBYHG1hZ2bUHvcSXFziTcneVDO65sEo2WeKwshHXtckqvnlyeKlllLvgpY4g0Z3opWBNgsanMwaEr5ABjegQ0lHEIRHOCchTvpSRiybGwAWSTy2AHFZxNYHUxFpsRZDlX0M7XgNf2sGxKAq6LZJtkJTKQAApC0cEojN7ceSNGkzcYnjxH81g2fWfVN6toBFgG7uQSzm5b/F9FnOseKRpySTE64+yHt7IWid2njk2/mT+SsYfBK1xcGm+y6zv4uIVdr3uef0TdBfZ1Vf7w74gJekJ9geP0ST6Gj+kVRK5pTHPG5IfHkuVs6iRxwuUe1jyTi65QsKYo3pxO/zTE4/zQuzMjkeBck2GL+mV590q6SGT9mwkMzfmf8ARFdL9bJcYmHANjY8eSxFS/O/d+bLq4eP2znnLdHSTIVz8pssl8qEEkrq6JErbAEoOZ1z3KcuURCydgbOEdlDO7KnMmEO7N1mZqtkDbnKJp24uU1rbJrnpUgMe96ivdJdOdgWQe2Yc04HmiY6g3QgdgDxT3ncitGaNJJqETo4urhZHLFYiQDfbIFuJvzV3XVtHWkTVVTJBLbZcyNuOzjbNuJ+iwkchHHenPeL5GUydiUfUxpwyBjDkNDb+Wfmh60uZJSi+HSP2+87Dj6YUlDUiaJpLt2ztciRw9bIqtjBdET7ryR5tI+qkVIGx5e0b3v2ieQwote9zz+iKpo7Pe7i4jHJo3fG6D169meJ+SSfQY/oqHhI1OefqmXXJR2aOc0cl2xbjxTl10PRhC08+SqukOrdTGd20bgfzVo84XnfS2s2nnkLgeKfjjbEm6RQVVRdxPE7yqqR6Wqk7+SHXcnic1kUjicKcBP2MbkrWZHklcjA8gsmOcp6hlkK4700GK1sadyY1PthNATZGl9EeogpSPoksMINmsaQkafonOCY5ZmaEJuVNtKC1j4p91vYGODrJ5KgKmBQYT6QdC+OkF8dqN1wc+23C0dRJeRrRvuSe4BRakwdVY+yC2/gMoU1ZidFcXdUSbN/sgNLvkEgSHSK50lZVMO6LYa0eZRev+yz+I/JVWlwObV1kgNg54HdgE+qsukLxsR53uxf+ElLNaGj2U7z9Ul0170xrhjPJcaTOz0Pa5KFHtJ5KNUEg1CQNjc47gF5Fqs9zm98r1HpE8Ngee5eP10ufVV4fpz8oKclSMZlSQxYv4IimgJd+eapKZOMLJBTEiybSQXaT4W8rq5jg+vyQmkx9hzT7p+YuFNTZTEpqx4ObcMoOQCyJ1YbDj5/FQOILdyrF6JNbB3nguG9R7X0Ujhi6pdi9COwmJJE8jCFmpDHFcQlTZHWWvYRHDI80rlB1mU8vymXYrFduXEprtyYAsY+paGpdUwjrSADZzrY7I3hQ6q9zpaN18Ce9hnex7beCg1SkdBRXwOywOIJv2ntAA7rHKOo4xtsccDbAZ4c1orVhJXNvK+NuNp+048bWyfFVf6RHWjp7f8Aikf9N6sa54hkcAQZJiTn3WAYHhf5qp/SD/cUv/Fz+G9K+gw/RkXzu4OcPAlPZqUo98+dih3OSFQezsD2axLzafFqk/248b2MPhcKpG9K5Ligk/STWNunI2S32fevxXn9Y3aOO9abW/7pw42VXp1A8t6y2Ddt+fMJ46RGZG2EbVuGFb0VEOShi052+104Oe08Qkk9hUaRespQqx1NsvPeBfxGPqkh1B24qdk4ce9AYzfSWlJDSBu3+qr30xDG3HGy2VZShzSEI/Txa3fdZSoDiYY05DrW3hSTQEY71pKrTcgj8hRVGnp8xPGZ2sgsAR3fJRtyLK+qaYEeiqnQWPcnUhJQojZAbIOfiroubb88lWVjbfBaL2BrQCEpK6yYSrCUSFybtJLpboGo+sdVcKilAAw8svfeBcO9cKKka1zhI8gMY6zM22pCbCyrNFge6ndE3DrtyTuxk+STXZ2l9MxmGRzx2796xrBNRfbUprnAjYR3C3BTdPXXpqU85AfVjkRLRB9dNKQdkdW2/MtBuB3blD05Z/udN3Pb/wDAhaQ0P0YqQ/VNBXOKaT9FznYkcCpHqG6e4pWGRFNRulIYwXL7NHmQtBq1GxmzAwdiIWx7zved6qfojSDafUm+zEyzORkfuPkPmh6q4JvzKZ3RL2Qx04whKylBvhGhygndvUy9IoZaQgk96bALHKNqHfVQtZdK2DCwmM/JPcup4seSjqDZaLCkiCciyr6h1/iiJ5EMGXTE2gKZlwhzREjcfRX0NJfgrCPTxbKNgxsyD9KdbCrNRoXDeOS9AnhACq6mEHhyRUqYHx6MC6I70M5aitoAL+az08ViVaE7OeUaB0ilLMXUSqKfVHSIOp6N747AiM9q/aDnEbvG6qa6K5Gy2xY8OJufdPJWFVUCp09zQ7acQxjrZySCCTysh5G7RbG0Xe92fqe4BZPQrWw2tlL6l0MYuSQXEbmt4k8kJ09haKOINNw2RgB54IVjqNZFFI9kVjM8tfIOJDrhhceDcG3Oyq+lshOmxvd7W3Ffdv2rHclY0P0YVyaXNAJcdlrRdxO4AC5K6UoataTBUd1PMfLYKj2zs6iCU+qmYn9XhLwBl0rtho5YGUa2nqDkyxs7mRB3qXkqj6N1vVx24Pc8k8Rs9kDvWl0mojmnii2vbeAeduKZ60RTtFuOjszaRkjq+qj6wbXVt6oMA4Et2d6yNfVvaSBVSPte22xhv/hAXtGvUkJYBILtAAa0chu8l5xrOhwuN2M2N/NBz0FRsyg6RzM3gEC2QCD6FLH0lL9xbf7Luy4+F8FT1WlODXMFjfAPFU0XReUne2y38tC/2maSGp2xgEX4EZGEXTwnkqObRJqandM2UlzMlpywswCed1Hp/TNo/vGZHIb0j476KLlrTNpDHjyVfXtyhIenVLbId6H4Krq+lTZXbMMbnEnGLfPgh4pB8yCHXunwtQ8dDVSZJZHe24Fx/klqNLfGwvkqZGgb9lrBnkLg5QUfobLynAARZfhebS1kmXNkl2QQO1sX7vdUUWsyt/753o0jzwqeOxHy0b+rcqud6oY9dl4ua8d92/U/JPOquO9uO7KV8bGXOGzuuqHU6U3uBvKPFcHdye2zrcUNxElJMrJKLsWG+yp3MK10jMKhrKezk/HyX2TcPh7/AKC10dI4ht9vYLQLkktOyrDUKwUFO59g+S7Q7xc4NA/hBOUbqtQaaHr2suI4T3NG458SsT0hq5Hsla4NIBZaw7WJW8V0JaJstNXxqVTjfDT/AA60fVO6RH/siP8A4sQP4tlLrVO410zrWbsRtNyM22iLW3DJU8zmPpGxPydvbty2ZS5t/RJJ0gwWzH0uizSZ2Nln2n9kW/d5qx1aghioa0tBDv1SUXJ34zjgreer7I77lVMd5pNk5jA/aA5BvuaVz5U7OyrVHmmh6TLUxfsRljnA3cBv7Q3rUdGtDmp5xLPs4B2ADftd9kS7SXUEjpaRoex/twONrHgYnfQqxqukED9iFwdTysJ2o5x1by477E4dYDgne+iSSWi6nrTJa/IIKpFx6roBi/McMj1C5zbqWy6ikVklOCdy6KkzuVl1KWRwaLkgC284Hmi7M2kZfpzUCOjeOMhawDxyfksNolHFIO21znX3B1h8FZ9NNS/WqhkMXaay4uMgvdvI7gAtb0Z6NtiYLjOL3Co3jGvZJRzkYzUdCi2bsD2kDibg+qB6NSdXMPT8+i9J1ajaG2twK88NPsVBH5whCba2CfHizfU8lgPBQajE2Vuy4XAOR3oini7IvyHyUhp1Oh49GYrtFBY5jMA5znIWbm0CoB9ja7wV6C6nN0zqE65GgS4kYSPSJQLFjr+BT4dNlBGCtwYSo3MQfIzLhMt+pF3tNuqvUY3U8g2Tg5z8ltXtHzWN6VSgzW+y0eu9NxNt7J8kcQmg1ISdlws63kUyuaL+qooXkHCsnSl2881TBJ2SU6PeKvWzVUE4tYbHV8+04G3y+KrpmNc555nPhtXyhqPUGspZYrbT3lhAbw2eJ9U2KV3V9Y4tazIz9oXNu9BcmhTSawXPrDGzJcxm7NrjjyQLZAL5/IJT2dK2NFmj9rJazg3L2sb7RPuhZmo1TZa4gi9txSzeSKcb/otaqrHHwS0FSGxbQ3uJJ9bD4LD1usufm3NQOq52MGHBlr578qJ12bKmruuqYYz7z/g27jfyaiekQ61z9oBwcdzhccVlv0dSF9eC7OxDO/wIDWg/+4rVVJBJ8U/SBFXIzI0zYN4xJFi37N7wP8OQnF9SN9VUW7xGbeZZcrQxtSujHIIZMq4IzLjK7LqupHgIm/8A1QVRSQu9oSyn/wAyZ5B8WiwK1r6ccghHMaw7RG4Y9VnOS6F8aBdB0BrXCR7Ws+yxosALb1r42gYCwrelrDKWOwbkA8CVZu1kDceXFI03tmSS6DtXH1Xn/SKAteHt3g+S0VRqZdvUVVTNe3PFBPF2CSTRDpfSNpAbL2CABd2AeGCtNTvDhcEEd2Vi6aEgubYEbjcXHxRkNAwZbtwnOY3WH+E3CqmmTUaNYYUwwYVJHNUNw2pa8cpIy0nzafonyalV8I6d47pXNPxCyjfQ+T9lm9v58lXThMOo1Ns07fKZtkDPV1R3QRjxmH0SvibM5jqiUAG/AEled10+29zvtEn+S1eoQTyAh8jGNO9rASe8XKr26ZG3m49+70VYNQWyE05FNSwki9sItxAVlO3GFWzQ3KZclk3CjR0+qPGQTwxc2RjdXe5pY83aDcXOB5LLF55lOjJ8VnFdELNlT6k58sTydrYBaBuwQQiq/o9LLTGsbJGAA8vY4OB7O8gjHlZVmiw7D2uMkbzs7VmEktJBFnAixNlsmVJfpc4PBswt/wArUFHQ8NMw9JB1b2FwDj2scL2RM1YXOzi9goql3bZ4u+Sc5lxZTaOyzS9DoWMNQ9tr9W1v+J2fki3uz5qr6HR2jqO1fLB6XKOJygynH2Thycd6hYfkpWpGXZK1iq9ao3EdhWwNvgmSOuiIzEs6NhxLnC5Bv3KKpic3gVtZBZCiluhbFo89rtPkdctLr+JR2kSyMZsyHI3X5LVVtPhVg0zb4nyRyfQMSPSmbRKvmUYSUNC1gACPa3HqiaiukoAgnUG9XUhshZnLWUSKZ8RG5QPkICspHqvnQsDK+od9UG8IyZCyJURkDShD7e9EPyoxSXvniqxZFqywg0mORs5ZKG7GyYw72ntIJJ8MIHVKaz/2WW/O28juUZdtEAbyWi4/eIAWsouiLmTM69xNM8OHWREbTHWuNoHcN66Fs5qRV6fSvc5oc1rOyD2Q1m/cSBvut2yF0VBOx+CWzEYIxstz8FPF+qadZt3Pe8XY5/adsjcBbhlOm1UVNPMQbjZe3LdnhfF+GUWgowNSbln8R+Sf1n0Q859g/vD5FMrJSG3G/Ci0dF0jQdDT+zqOe00/BWW1lUXQea7ahpO/Yd6Egq7FiVOWi/Cwpim2hvQ23YIWq1AN423pLss3RZF/ElV8uq5Ib6qj1XXL2DSqc6pY79+LC6YXI2B1AH2ju4pzNUafLkLfVZV9bi/BLHXWCFBzRpHVAce6ydTnKz8FerWmnuEKYG7LpjxZP2sKvilKl69YKJZHYQc0ic+YWQz3FEZPRFK5BTn6ImR10LKVhZPQFMfqhJHKeY/VBzuWOeTGAXRLpAMb1BEMq30ekbIZG3ALNm9xf2rn6JlFsm2VunSWhqOBaIXNPEODzu9B6I+pqpJOsaXPdeMkNuSLlubBVEU4Y/a90nPhmyLhqg1wc03wB8ACutHK+jU9JnGR1KWdoNjAds+7huD6I7o4P93maRxf8WoaiiDid2LnPcFZaWBaUWA7N8bs3RlRKPJ/VGBqJOwwn7Tfko9QyBmySd37Nv8AyqGtBJ9FFnbJ6LHolUhs+yd0jXN+o+RWpvZedxSGNwe05abhbv8AWA8B7dzhf14KckPwyolmlJwFVv0t8snaNm5wOPLKNCKjlsVJKjpexKHozCPcHnlF1fROF4Bvskbrc06KryiBXI2Cikq+iTy0t2r8lTVGjysNjGeAwtwa/K51YHb0UK4nl89PKw32TZG0GogYJW1q42PaQQN3JZzUdIZmwF749EbQEqC6WquMFTuluqaggLLg9ysdpIyqdDy/eo3SYXbaikdhFBsa4oSeT6J0kiEkcmJNjJXfIoSU2U0jk2lZtyNGbXuSOAHFZIhOVBc+i1EWyXxhrXsbKDtA9hwBGOeQo6OaZs0/VbGSza2r8ja1ldahXtMLWlz3yBmyS8ggN4BqyddVvjldsOLdoNvY77BXjV6IZWD1HseifRglotff9USKJzm7O44RsQZG0Dj4JsibNbpTv2hvuId8lJFXhpkY2206MbN8DwPesvLqxBGyeFt3cqv9dJcSXEfNI5MlGH9WP1QFsV92QPRSTRmw8Ah6qXbADnEtycAk7kjawWsXDhvObfzQp0dWVkE2LK76M6gCOpPiz6hUEtO5x7AJFuAJ+QRVDQzBwcGPBabg7Lh53ITOOgRlTNldPCjheXNa4ixIFxyPFTsAXO1R3QdoexyVxKmgiBypHtCFoowSOQp7pUrmKKQIgOMuENI+5TXyWQ75UrFsWRyjD7KJ0mFCZLIRFbDHzIV811GZ0O+XCdIGRLLICh3SqN8qGlmTxiJKQs06EfqD4sstY4IIugquqvgeaGYT3lXjxnO3ZbR63ewLLc7O3+RUdfVte7abusN44oTqLi9j6KIhP4yej1uXR2+6zGPadn4KAdH4ye0z0c5aZzE9rMJ1BIyRnR0fpSbmDPMuf/NSN0Ol+6xebb/NXz2Jmwjig0VkWnxtFmwRN8GDcjImW3RsHgxoRbbLtpbFBojbI7/8ACZPG5wIJNjvyVOSE0G6DSBRVu0lrWu2L3I4km9vFVDJFqwVTazQZMjLfvDdu95c/Lx/C3HOtETJVIJAVUMqbKVtSuXFrs7FNNFg9/58kPK9QOqPz5KB9SEwWxZXBDPTJan5IaSZaiUmLI5DulChmmQks1kygJlQTJL9EO6bvQslUEC+r5KsYE5TD56iyr55y7co23dvRDafCrGBGU2MghxfvVhHARuNvABRUoHsnF738Uaw2wcH5jmqpEW7ISx32ih6il2je/wVhsXTXMTUBM9cY5OD1EXY9EoKxZOtEm9NYUgKY4d6wR+19Ujz9EwFNsgAkDhx70jk0FOcVmahC9Zzp7qfV04YD2pTbvDRlx+S0AWE6VtNTXNiv2I2jbPJvtO+gRSsDZXaXK6OIvkJ7WWDuHHzU9DqHWh2yCNm1/Pd8lB0gkJNgLNFg0chawCi6LHL287fNR5oKhuObsspJyFC6pKNrqSwuDayzlRUtbxXMot9HQ50HPn7xuQkuoNHvBUc85co2xE7lZca9iZlhLqQ4An4IWSqce5IKdSMjVFCibkD7JRFPS8SpoYLnciw22EyixHIgEIUkYTyngWCoot9Emxj4eIU76m7QCMg3B+aZZc5i6Y/59bJuYpqTwCaZyn9WkdEFVcSQtsuv7TT91H4p/yLv7TT92H4v9C5cvPZ6WKEP6TT92H4v9C4/pMP3Yfi/wBC5cgbFCD9JZ+7D8X+hKf0mH7sPxT/AJFy5Y2KE/tJ/wDTf9U/5Up/SYfuw/FP+RcuWNihp/SWfuw/F/oVMelQMksvU5kIJHWHDQANm9ty5cjYMEDaj0g615dsbN7Yvfd5KCm1p0ZuwWPPC5cg9mUIpjKzWpZL7Tib5QRmXLkKDiiSOdo92/mpP10fZ+K5cjSNihw1Bv2PikdXj7PxSLkwMUTx6sBgM+KR+r39z4pVywMENGqD7PxT/wDbA+x8Vy5FTlHoHij8OOsfufFPbrI+x8Vy5P55/TeGHwQ6yPsfFN/2v+58Vy5DzTfs3hh8P//Z';

        function init() {
            render();
            bindEvents();
        }

        function bindEvents() {
            const imgWrap = document.querySelector('.img-wrap');
            imgWrap.addEventListener('click', triggerFileInput);

            const fileInput = document.getElementById('photo-upload');
            fileInput.addEventListener('change', photoUpload);
        }

        function photoUpload(e) {
            const file = e.target.files[0];
            const reader = new FileReader();
            reader.onloadend = () => {
                updateImage(reader.result);
            };
            if (file) {
                reader.readAsDataURL(file);
            }
        }

        function triggerFileInput() {
            document.getElementById("photo-upload").click();
        }

        function updateImage(src) {
            const img = document.querySelector('.card-avatar');
            img.src = src;
        }

        function render() {
            const root = document.getElementById('root');
            root.innerHTML = `
                <div>
                    <div class="img-wrap img-upload" style="cursor: pointer;">
                        <img class="card-avatar" src="${imagePreviewUrl}" alt="Preview" />
                    </div>
                    <input id="photo-upload" type="file" style="display: none;" />
                </div>
            `;
        }



        init();
    </script>
	<div class="main-center">
		<!-- 상단 메뉴바 -->
		<div class="blocks-menus">
			<div class="container">
				<ul class="primary-menus">
					<li><a href="MainPage.jsp">Home</a></li>
					<li class="search">
						<form class="search-container">
							<input type="text" id="search-bar" placeholder="챌린지를 검색하세요">
							<a href="#"><img class="search-icon"
								src="http://www.endlessicons.com/wp-content/uploads/2012/12/search-icon.png"></a>
						</form>
					</li>
					<li><a href="FeedPage.jsp">피드</a></li>
					<li><a href="ChattingPage.jsp">메세지</a></li>
					<li class="menus-megamenus"><a href="#">카테고리 <i
							class="fa fa-angle-down"></i></a>
						<ul class="mega-menus">
							<div class="section">
								<h3>Pages 1</h3>
								<li><a href="#">Submenu 1</a></li>
								<li><a href="#">Submenu 2</a></li>
								<li><a href="#">Submenu 3</a></li>
							</div>
							<div class="section">
								<h3>Pages 2</h3>
								<li><a href="#">Submenu 1</a></li>
								<li><a href="#">Submenu 2</a></li>
								<li><a href="#">Submenu 3</a></li>
							</div>
						</ul></li>
					<li><a href="MyPage.jsp">마이 페이지</a></li>
					<li><c:if test="${!empty info}">
							<a href="LogoutService">로그아웃</a>
						</c:if> <c:if test="${empty info}">
							<a href="LoginAndJoinPage.jsp">로그인</a>
						</c:if></li>
					<li><a href="">작성하기</a></li>
				</ul>
			</div>
		</div>

		<div class="card" data-state="#about">
			<div class="card-header">
				<div class="card-cover"
					style="background-image: url('data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIALcAwwMBIgACEQEDEQH/xAAZAAEBAQEBAQAAAAAAAAAAAAADAgABBwT/xAAZEAEBAQEBAQAAAAAAAAAAAAAAAgExESH/xAAaAQEAAwEBAQAAAAAAAAAAAAADAAECBAYF/8QAFxEBAQEBAAAAAAAAAAAAAAAAAAECEf/aAAwDAQACEQMRAD8A9PodYTUU+Zp9eBoVYasHQqXNBWBvH0VgaxinzXz1gqw9YKsHT5r56RWGrBVij5oKxG4XR0hpRbiNwu4PUJB6jcJqdQkFqaXqNQkHqNJqNXCQeo0mo1okHqNwmp3FtwW59ZfjNN9euUii0OnRp4OCrBVhaHQqaBoVYahUOmyCsFRrwVYxT5BWDrDUKmT5DQ9LWD3ELBajcLo9xC5HqNJqNQkFqNLQ9xCweo0lI1CQdYjS6PWo3B6nV6nVkg96ymW09dodE0dOvTwmRUii0KhUuQ0KjUKh00DQaPYaYp8hrBUaxUwfIaRpKHqHg9RpNHqiRGj0mopZIPUUvUUhMj1Gk1GoSD1Gk1FLhIPUaTUa0SJZmRp67Q9LQ9dteEg6FRaHQaXIaHRaFQ6aBoNnoNsHyCh0ahUzT5DQ9LQ6UaDoekpGqLB6PS6Olkg9Rq9RSFg9RpNRSEiNRS9RS4SD1Gk1GtNxLMyNvXaHRKHTurwmR0iiaOg6LBUKi0Kh0sFQbNQbYp8hoVGoNMV0ZFQ9JSKUbI6HpNHqiRFD0lD1CxGopeopZIPU0rU0hIOuI0mo1cJB6jSUPWiRLOsjb12h0WhU7q8HlFCotCoNLkdCotCodNkNCs1BtinyGhUWhUxT5DSKXSNUfI6RpKHqiRFC0mopZMj1Gr1GoWIpGrpGoSI1GrpGrhIih6Ska0SJZmRt69QqLQtd1eDyihUWh0KlgqFRaFQ9GyKg2ag2OnyGhUag0xT5FQ6XSKUbKKHpKFqFiNRq6RqEg9Rq9RqFiKRq9RqEiKRpKFq4SJpGq1GtEjjOMjb1+haWhU768HlGjomjoNLBUKi0Kh6NkVBstCsdPkNCotCpinyGkUukUo+R0PV0jUJlGjolC1C5RqKXqNQsRqKVqNQkTXEarUUuEidRqtRrTccZxkbewUKi0Knfp4PKKFRaFQKXI6FRKFQ6bIqDZqDbFPkNCotBpiujIqHpKFSjxND1dD1CZRqKXQ9UWJ0er0eoSJ1Gq1GrJE6jVajVwkTqNVqNahI4zjLaew0KiUOnbXg8ooVLpFBpcioNFoVD0fIqDZbDY66MisNFsNawfI6HS6RSGg6HWrodIWI1GqpGoWJ1GrrRahMppOu6nUJE6ilUPWoSJ1Ou6nVkjjOa4tp7DQ6JQqdleDiKHRKFQaXIqDRaDQ6fI7BWlsNsV0ZFeholDrWHRkdDpdaOtQ2UUOl0OkLlFI1Wo1CxOj3V6PUJE6nXdRurhImkarUa0SJ1Ou7qN1ZI3rI9dRrj2GtRWuM69PBQdaKtcYWjZHWhvWYVPkF6C9Zh10YDWjrWZToyKtHWsyGyKtHusyi5RuorXWWSC3UbrMhYjdRuszUJEbqN1mabiN1FUzLhYLaZmWTj/9k=')">
				</div>
				<div id="root"></div>
				<input type="file" id="photo-upload" style="display: none;" />
				<h1 class="card-fullname">King Gang</h1>
				<h2 class="card-jobtitle">NickName</h2>
			</div>
			<div class="card-main">
				<div class="card-section is-active" id="about">
					<div class="card-content">
						<div class="card-subtitle">한줄 소개</div>
						<p class="card-desc">안녕하세요우오우오우오우오우오우오우오우우.</p>
					</div>
				</div>
				<div class="card-section" id="experience">
					<div class="card-content">
						<div class="card-subtitle">WORK EXPERIENCE</div>
						<div class="card-timeline">
							<div class="card-item" data-year="2014">
								<div class="card-item-title">
									Front-end Developer at <span>JotForm</span>
								</div>
								<div class="card-item-desc">Disrupt stumptown retro
									everyday carry unicorn.</div>
							</div>
							<div class="card-item" data-year="2016">
								<div class="card-item-title">
									UI Developer at <span>GitHub</span>
								</div>
								<div class="card-item-desc">Developed new conversion
									funnels and disrupt.</div>
							</div>
							<div class="card-item" data-year="2018">
								<div class="card-item-title">
									Illustrator at <span>Google</span>
								</div>
								<div class="card-item-desc">Onboarding illustrations for
									App.</div>
							</div>
							<div class="card-item" data-year="2020">
								<div class="card-item-title">
									Full-Stack Developer at 네<span>CodePen</span>
								</div>
								<div class="card-item-desc">Responsible for the
									encomposing brand expreience.</div>
							</div>
						</div>
					</div>
				</div>
				<div class="card-section" id="contact">
					<div class="card-content">
						<div class="card-subtitle">CONTACT</div>
						<div class="card-contact-wrapper">
							<div class="card-contact">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
									fill="none" stroke="currentColor" stroke-width="2"
									stroke-linecap="round" stroke-linejoin="round">
                                <path
										d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z" />
                                <circle cx="12" cy="10" r="3" />
                            </svg>
								Algonquin Rd, Three Oaks Vintage, MI, 49128
							</div>
							<div class="card-contact">
								<svg xmlns="http://www.w3.org/2000/svg" viewbox="0 0 24 24"
									fill="none" stroke="currentColor" stroke-width="2"
									stroke-linecap="round" stroke-linejoin="round">
                                <path
										d="M22 16.92v3a2 2 0 01-2.18 2 19.79 19.79 0 01-8.63-3.07 19.5 19.5 0 01-6-6 19.79 19.79 0 01-3.07-8.67A2 2 0 014.11 2h3a2 2 0 012 1.72 12.84 12.84 0 00.7 2.81 2 2 0 01-.45 2.11L8.09 9.91a16 16 0 006 6l1.27-1.27a2 2 0 012.11-.45 12.84 12.84 0 002.81.7A2 2 0 0122 16.92z" />
                            </svg>
								(269) 756-9809
							</div>
							<div class="card-contact">
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
									fill="none" stroke="currentColor" stroke-width="2"
									stroke-linecap="round" stroke-linejoin="round">
                                <path
										d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z" />
                                <path d="M22 6l-10 7L2 6" />
                            </svg>
								william@rocheald.com
							</div>
							<button class="contact-me">WORK TOGETHER</button>
						</div>
					</div>
				</div>
				<div class="card-buttons">
					<button data-section="#about" class="is-active">게시글</button>
					<button data-section="#experience">활동 피드</button>
					<button data-section="#contact">레시피 저장소</button>
					<button data-section="#contact">프로필 수정</button>
				</div>
			</div>
		</div>


		<script>
			document.getElementById('avatar').addEventListener('click',
					function() {
						document.getElementById('photo-upload').click();
					});

			document
					.getElementById('photo-upload')
					.addEventListener(
							'change',
							function(e) {
								const reader = new FileReader();
								reader.onload = function() {
									document.getElementById('avatar').src = reader.result;
								}
								reader.readAsDataURL(e.target.files[0]);
							});
		</script>
		<script src="./asssets/js/MyPage.js"></script>
</body>

</html>