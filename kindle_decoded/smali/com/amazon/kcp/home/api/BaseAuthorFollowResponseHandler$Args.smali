.class public final Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;
.super Ljava/lang/Object;
.source "BaseAuthorFollowResponseHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Args"
.end annotation


# instance fields
.field private final action:Lcom/amazon/kindle/home/model/HomeAction;

.field private final authorAsin:Ljava/lang/String;

.field private final callback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final linkParams:Ljava/lang/String;

.field private final reftag:Ljava/lang/String;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authorAsin"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "reftag"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "linkParams"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sdk"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->view:Landroid/view/View;

    iput-object p2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->callback:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->action:Lcom/amazon/kindle/home/model/HomeAction;

    iput-object p4, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->authorAsin:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->reftag:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->linkParams:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->view:Landroid/view/View;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->callback:Lkotlin/jvm/functions/Function3;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->callback:Lkotlin/jvm/functions/Function3;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->action:Lcom/amazon/kindle/home/model/HomeAction;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->action:Lcom/amazon/kindle/home/model/HomeAction;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->authorAsin:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->authorAsin:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->reftag:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->reftag:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->linkParams:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->linkParams:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object p1, p1, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAction()Lcom/amazon/kindle/home/model/HomeAction;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->action:Lcom/amazon/kindle/home/model/HomeAction;

    return-object v0
.end method

.method public final getAuthorAsin()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->authorAsin:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->callback:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getLinkParams()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->linkParams:Ljava/lang/String;

    return-object v0
.end method

.method public final getReftag()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->reftag:Ljava/lang/String;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->view:Landroid/view/View;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->view:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->callback:Lkotlin/jvm/functions/Function3;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->action:Lcom/amazon/kindle/home/model/HomeAction;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->authorAsin:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->reftag:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->linkParams:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Args(view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->callback:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->action:Lcom/amazon/kindle/home/model/HomeAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", authorAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->authorAsin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reftag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->reftag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->linkParams:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
