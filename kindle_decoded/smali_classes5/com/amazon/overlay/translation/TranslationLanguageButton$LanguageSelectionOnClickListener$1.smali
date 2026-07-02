.class Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$1;
.super Ljava/lang/Object;
.source "TranslationLanguageButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->createLanguageSelectionDialog(Lcom/amazon/overlay/translation/TranslationLanguageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 122
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
