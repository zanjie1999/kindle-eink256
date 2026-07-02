.class Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$2;
.super Ljava/lang/Object;
.source "TranslationLanguageButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->createLanguageSelectionDialog(Lcom/amazon/overlay/translation/TranslationLanguageButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$2;->this$0:Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener$2;->this$0:Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;->access$202(Lcom/amazon/overlay/translation/TranslationLanguageButton$LanguageSelectionOnClickListener;Z)Z

    return-void
.end method
