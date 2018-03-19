clear

javac Produto.java

javac Carrinho.java

javac -cp .:junit-4.12.jar:hamcrest-core-1.3.jar CarrinhoTest.java
java -cp .:junit-4.12.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore CarrinhoTest
