.class public abstract Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;
.super Ljava/lang/Object;
.source "BaseResumeWidgetProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/HomeCardBuilder;
.implements Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseResumeWidgetProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseResumeWidgetProvider.kt\ncom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1711#2,3:218\n*E\n*S KotlinDebug\n*F\n+ 1 BaseResumeWidgetProvider.kt\ncom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider\n*L\n41#1,3:218\n*E\n"
.end annotation


# instance fields
.field private final ignoreDownloadEvents:Z

.field protected onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

.field private final weblabName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;-><init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;->ignoreDownloadEvents:Z

    return-void
.end method

.method public synthetic constructor <init>(ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    const/4 p3, 0x1

    and-int/2addr p2, p3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "sk-fos-elbentk"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "sk-kfa-elbentk"

    .line 41
    :goto_0
    sget-object v0, Lcom/amazon/kcp/home/cards/base/HomeCardProvider;->cards:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 218
    instance-of v3, v0, Ljava/util/Collection;

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 219
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/home/model/CardData;

    .line 42
    invoke-virtual {v3}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 47
    :goto_2
    invoke-interface {p0}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetHelper;->getUserItemsCount()I

    move-result v0

    if-eqz v0, :cond_5

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v3

    const-string v4, "Utils.getFactory().authenticationManager"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_3
    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    goto :goto_4

    .line 52
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;->newResumeWidget()Lcom/amazon/kindle/home/card/HomeCard;

    move-result-object p1

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x0

    :goto_5
    return-object p1
.end method

.method protected final getOnClickHandler()Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;->onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "onClickHandler"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected abstract newResumeWidget()Lcom/amazon/kindle/home/card/HomeCard;
.end method

.method public setResumeOnClickHandler(Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;)V
    .locals 1

    const-string v0, "handler"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/BaseResumeWidgetProvider;->onClickHandler:Lcom/amazon/kcp/home/widget/resume/ResumeOnClickHandler;

    return-void
.end method
