.class Lcom/amazon/kindle/content/loader/LocalContentFactory$1;
.super Ljava/lang/Object;
.source "LocalContentFactory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/content/loader/LocalContentFactory;->register(Lcom/amazon/kindle/content/loader/IContentLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/content/loader/IContentLoader;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/loader/LocalContentFactory;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/content/loader/IContentLoader;Lcom/amazon/kindle/content/loader/IContentLoader;)I
    .locals 0

    .line 71
    invoke-interface {p2}, Lcom/amazon/kindle/content/loader/IContentLoader;->getPriority()I

    move-result p2

    invoke-interface {p1}, Lcom/amazon/kindle/content/loader/IContentLoader;->getPriority()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 67
    check-cast p1, Lcom/amazon/kindle/content/loader/IContentLoader;

    check-cast p2, Lcom/amazon/kindle/content/loader/IContentLoader;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/content/loader/LocalContentFactory$1;->compare(Lcom/amazon/kindle/content/loader/IContentLoader;Lcom/amazon/kindle/content/loader/IContentLoader;)I

    move-result p1

    return p1
.end method
