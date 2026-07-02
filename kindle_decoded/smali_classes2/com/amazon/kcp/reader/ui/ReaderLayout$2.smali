.class Lcom/amazon/kcp/reader/ui/ReaderLayout$2;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getPriority(Landroid/view/View;)I
    .locals 1

    .line 392
    sget v0, Lcom/amazon/kindle/krl/R$id;->location_seeker_decorator_priority:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 395
    :try_start_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 2

    .line 376
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;->getPriority(Landroid/view/View;)I

    move-result v0

    .line 377
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;->getPriority(Landroid/view/View;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 379
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 380
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    :cond_0
    if-ge v0, v1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    if-ne v0, v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 373
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
