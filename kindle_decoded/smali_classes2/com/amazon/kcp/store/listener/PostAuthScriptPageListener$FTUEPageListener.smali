.class Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$FTUEPageListener;
.super Ljava/lang/Object;
.source "PostAuthScriptPageListener.java"

# interfaces
.implements Lcom/amazon/kcp/store/listener/IPageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FTUEPageListener"
.end annotation


# instance fields
.field private sourceURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$FTUEPageListener;->sourceURL:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFireType()Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;
    .locals 1

    .line 124
    sget-object v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->RUN_ONCE:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    return-object v0
.end method

.method public onPageLoaded(Ljava/lang/String;)Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/store/listener/PostAuthScriptPageListener$FTUEPageListener;->sourceURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 118
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/FTUELoadingActivity;->forceClose()V

    const/4 p1, 0x1

    return p1
.end method
