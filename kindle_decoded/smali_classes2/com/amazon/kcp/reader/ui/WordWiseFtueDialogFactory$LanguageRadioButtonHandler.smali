.class Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;
.super Ljava/lang/Object;
.source "WordWiseFtueDialogFactory.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageRadioButtonHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$1;)V
    .locals 0

    .line 740
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;-><init>(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 743
    sget v0, Lcom/amazon/kindle/ww/R$id;->chinese_language_radiobutton:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 744
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$102(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;)Ljava/lang/String;

    .line 745
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$800(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    goto :goto_0

    .line 746
    :cond_0
    sget v0, Lcom/amazon/kindle/ww/R$id;->english_language_radiobutton:I

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 747
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$102(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Ljava/lang/String;)Ljava/lang/String;

    .line 748
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory$LanguageRadioButtonHandler;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->access$800(Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;)V

    :cond_1
    :goto_0
    return-void
.end method
