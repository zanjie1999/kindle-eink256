.class final Lcom/amazon/bookwizard/data/Category$1;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Lcom/amazon/bookwizard/data/Category;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/data/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "popular"

    return-object v0
.end method

.method public getName()Lcom/amazon/bookwizard/data/LString;
    .locals 3

    .line 33
    invoke-static {}, Lcom/amazon/bookwizard/util/BookWizardUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/bookwizard/R$string;->bookwizard_popular_header:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/amazon/bookwizard/data/LString;

    invoke-static {}, Lcom/amazon/ebook/util/text/LanguageTag;->getDefault()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/amazon/bookwizard/data/LString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
