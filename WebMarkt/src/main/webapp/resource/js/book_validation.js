function CheckAddBook() {
	
	var bookId = document.getElementById("bookId");
	var name = document.newBook.name.value;
	var unitPrice = document.newBook.unitPrice.value;
	var unitsInStock = document.newBook.unitsInStock.value;

	if (!check(/^ISBN[0-9]{1,8}$/, bookId, "[도서코드]\nISBN과 숫자를 조합하여 5~12자까지 입력하세요.\n첫글자는 반드시 ISBN으로 시작하세요."))
		return false;

	if (name.length < 4 || name.length > 12) {
		alert("도서명은 4~12자까지 입력 가능합니다.");

		name.select();
		name.focus();
		return false;
	}

	if (unitPrice.length == 0 || isNaN(unitPrice)) {
		alert("가격은 숫자를 입력해야 합니다.");

		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice < 0) { 
		alert("가격에 음수는 입력 불가능합니다.");

		unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (isNaN(unitsInStock)) {
		alert("재고 수에 숫자만 입력 가능합니다.");

		unitsInStock.select();
		unitsInStock.focus();
		return false;
	}

	function check(regExp, e, msg) {
		if (regExp.test(e.value)) {
			return true;
		}


		alert(msg); 
		e.select(); 
		e.focus(); 
		return false;
	}
	document.newProduct.submit()
}