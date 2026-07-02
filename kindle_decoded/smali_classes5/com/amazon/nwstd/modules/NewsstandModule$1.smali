.class Lcom/amazon/nwstd/modules/NewsstandModule$1;
.super Ljava/lang/Object;
.source "NewsstandModule.java"

# interfaces
.implements Lcom/amazon/kindle/factory/IKindleObjectProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/modules/NewsstandModule;->initialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
        "Ljava/lang/Integer;",
        "Lcom/amazon/kindle/model/content/ILocalBookItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/modules/NewsstandModule;)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/Integer;
    .locals 0

    if-eqz p1, :cond_0

    .line 130
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isListableBookPeriodical(Lcom/amazon/kindle/model/content/IListableBook;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    sget p1, Lcom/amazon/kindle/newsstand/core/R$layout;->periodical_location_container:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 126
    check-cast p1, Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/modules/NewsstandModule$1;->get(Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
