#!/usr/bin/env perl
my $file = shift(@ARGV); # 記憶するファイル名を指定
open(FILE, $file) or die "$!\n"; # ファイルを開く
while(<FILE>) { # ファイルを1行づつ処理する
        chomp; # 行末の改行文字を取り除く
        my($id,$value) = split(/\t/); # タブでファイルを切って、第1カラムを$id、第2カラムを$valueに代入
        $valueof{$id} = $value; # ハッシュで記憶させる
}
close FILE; # ファイルを閉じる

while(<STDIN>) { # 標準入力から1行づつ処理する
        chomp;
        my($gene,$id,$kegg) = split(/\t/); # タブでファイルを切って、第1カラムを$gene、第2カラムを$idに代入
        print "$gene\t$id\t$kegg\t$valueof{$id}\n"; # $idをキーに上で記憶したデータを引き出して同時に表示
}
