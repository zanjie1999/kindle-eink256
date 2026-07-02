.class public final Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$getBooks$1;
.super Ljava/lang/Object;
.source "LibraryCardDataProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->getBooks()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryLoad(Z)V
    .locals 3

    .line 117
    sget-object p1, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory;->Companion:Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;->notifyWidgetsChange$default(Lcom/amazon/kcp/home/feeds/HomeWidgetsFactory$Companion;ZILjava/lang/Object;)V

    return-void
.end method
