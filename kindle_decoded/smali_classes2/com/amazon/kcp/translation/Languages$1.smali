.class final Lcom/amazon/kcp/translation/Languages$1;
.super Ljava/lang/Object;
.source "Languages.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/translation/Languages;->verifyCachedLanguages(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kcp/translation/Language;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$collator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Ljava/text/Collator;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/translation/Languages$1;->val$collator:Ljava/text/Collator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/translation/Language;Lcom/amazon/kcp/translation/Language;)I
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/translation/Languages$1;->val$collator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/amazon/kcp/translation/Language;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kcp/translation/Language;->getDisplayName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 96
    check-cast p1, Lcom/amazon/kcp/translation/Language;

    check-cast p2, Lcom/amazon/kcp/translation/Language;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/translation/Languages$1;->compare(Lcom/amazon/kcp/translation/Language;Lcom/amazon/kcp/translation/Language;)I

    move-result p1

    return p1
.end method
