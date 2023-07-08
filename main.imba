global css body bgc:violet5 d:flex ja:center

let count = 0
let log = ""

def save
	log += "{count} - "
	count = 0

def reset 
	log = ""
	count = 0

tag counter
	<self>
		css m:7rem c:gray7
			.btn rd:lg bgc:violet4 py:1rem px:5rem tt:uppercase bd:0 bxs:md c:white fw:lighter
			.limit maw:30ch of:hidden text-overflow:ellipsis ws:nowrap word-wrap:break-word
			
		<section>
			css bgc:gray3 bxs:lg w:40rem h:22rem rd:0.5rem d:hflex ja:center  g:5rem

			<div>
				<h1[fs:2xl]> "People Counter"
				<h3[fs:3xl]> count
				<br>
				<div>
					<p.limit> "Logged: {log}"
				<button @click=reset!> "Reset"
					css rd:lg bgc:violet4 py:0.5rem px:1rem tt:uppercase bd:0 bxs:md c:white fw:bold

			<div> 
				css d:vflex gap:1rem
				<button.btn @click=(count++)> "Count"
				<button.btn @click=save> "Save"	

imba.mount <counter>
