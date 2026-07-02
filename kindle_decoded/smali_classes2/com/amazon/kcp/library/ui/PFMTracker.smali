.class public final Lcom/amazon/kcp/library/ui/PFMTracker;
.super Ljava/lang/Object;
.source "PFMTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/PFMTracker$Entry;
    }
.end annotation


# instance fields
.field private final entries:[Lcom/amazon/kcp/library/ui/PFMTracker$Entry;


# direct methods
.method static synthetic access$000(Lcom/amazon/kcp/library/ui/PFMTracker;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/PFMTracker;->updateViews()V

    return-void
.end method

.method private static getResourceId(Landroid/content/res/Resources;ILjava/lang/String;)I
    .locals 2

    if-eqz p2, :cond_0

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private updateViews()V
    .locals 9

    .line 36
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 37
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/PFMTracker;->entries:[Lcom/amazon/kcp/library/ui/PFMTracker$Entry;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 39
    iget-object v6, v5, Lcom/amazon/kcp/library/ui/PFMTracker$Entry;->view:Landroid/widget/TextView;

    .line 40
    iget v7, v5, Lcom/amazon/kcp/library/ui/PFMTracker$Entry;->keyStringId:I

    if-eqz v7, :cond_0

    .line 41
    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v8, v5, Lcom/amazon/kcp/library/ui/PFMTracker$Entry;->keyStringId:I

    invoke-static {v7, v8, v0}, Lcom/amazon/kcp/library/ui/PFMTracker;->getResourceId(Landroid/content/res/Resources;ILjava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 43
    :cond_0
    iget v7, v5, Lcom/amazon/kcp/library/ui/PFMTracker$Entry;->keyTextSizeId:I

    if-eqz v7, :cond_1

    .line 45
    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v6}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v5, v5, Lcom/amazon/kcp/library/ui/PFMTracker$Entry;->keyTextSizeId:I

    invoke-static {v8, v5, v0}, Lcom/amazon/kcp/library/ui/PFMTracker;->getResourceId(Landroid/content/res/Resources;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 44
    invoke-virtual {v6, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public onTokenFetchedEvent(Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kindle/services/authentication/TokenFetchedEvent;->getKey()Lcom/amazon/kindle/services/authentication/TokenKey;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    if-ne p1, v0, :cond_0

    .line 80
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/amazon/kcp/library/ui/PFMTracker$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/ui/PFMTracker$1;-><init>(Lcom/amazon/kcp/library/ui/PFMTracker;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
