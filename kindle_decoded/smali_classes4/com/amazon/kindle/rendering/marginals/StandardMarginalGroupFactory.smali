.class final Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;
.super Ljava/lang/Object;
.source "MarginalGroupController.kt"

# interfaces
.implements Lcom/amazon/kindle/rendering/marginals/MarginalGroupFactory;


# instance fields
.field private final data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

.field private final mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/yj/IMarginalContentProviderContext;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mcpContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    iput-object p2, p0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    return-void
.end method


# virtual methods
.method public getFooterGroup(Z)Lcom/amazon/kindle/rendering/marginals/MarginalGroup;
    .locals 3

    if-eqz p1, :cond_0

    .line 212
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;

    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2, v1, v2}, Lcom/amazon/kindle/rendering/marginals/StandardFooterMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;Lcom/amazon/kindle/rendering/marginals/NativeObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 214
    :cond_0
    new-instance p1, Lcom/amazon/kindle/rendering/marginals/NoopMarginalGroup;

    invoke-direct {p1}, Lcom/amazon/kindle/rendering/marginals/NoopMarginalGroup;-><init>()V

    :goto_0
    return-object p1
.end method

.method public getHeaderGroup(Z)Lcom/amazon/kindle/rendering/marginals/MarginalGroup;
    .locals 9

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;->mcpContext:Lcom/amazon/kindle/yj/IMarginalContentProviderContext;

    invoke-interface {v0}, Lcom/amazon/kindle/yj/IMarginalContentProviderContext;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v3

    .line 201
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "Utils.getFactory().userSettingsController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isTimeDisplayVisible()Z

    move-result v5

    .line 202
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->deviceSupportsDisplayMask()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    new-instance v0, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/rendering/marginals/DisplayMaskAwareHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    .line 206
    :cond_0
    new-instance v0, Lcom/amazon/kindle/rendering/marginals/StandardHeaderMarginalGroup;

    iget-object v2, p0, Lcom/amazon/kindle/rendering/marginals/StandardMarginalGroupFactory;->data:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v1, v0

    move v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/rendering/marginals/StandardHeaderMarginalGroup;-><init>(Lcom/amazon/android/docviewer/mobi/BookPageMarginal;ZZZLcom/amazon/kindle/rendering/marginals/NativeObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    return-object v0
.end method
