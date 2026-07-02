.class Lcom/amazon/krf/internal/input/UIEventHandlerDebug;
.super Ljava/lang/Object;
.source "UIEventHandlerDebug.java"

# interfaces
.implements Lcom/amazon/krf/platform/UIEventHandler;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mWrapped:Lcom/amazon/krf/platform/UIEventHandler;


# direct methods
.method public constructor <init>(Lcom/amazon/krf/platform/UIEventHandler;)V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UIEventHandlerDebug"

    .line 11
    iput-object v0, p0, Lcom/amazon/krf/internal/input/UIEventHandlerDebug;->TAG:Ljava/lang/String;

    .line 15
    iput-object p1, p0, Lcom/amazon/krf/internal/input/UIEventHandlerDebug;->mWrapped:Lcom/amazon/krf/platform/UIEventHandler;

    return-void
.end method


# virtual methods
.method public UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "UIEndTransaction"

    .line 32
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/amazon/krf/internal/input/UIEventHandlerDebug;->mWrapped:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V

    return-void
.end method

.method public UIEventHandled(Lcom/amazon/krf/platform/UIData;)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/krf/internal/input/UIEventHandlerDebug;->mWrapped:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UIEventHandled(Lcom/amazon/krf/platform/UIData;)V

    return-void
.end method

.method public UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 26
    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getX()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getDZoom()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getDx()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getDy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "UISendEvent - %s -- x,y(%f, %f) -- dzoom(%f) -- dx,dy(%f, %f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/amazon/krf/internal/input/UIEventHandlerDebug;->mWrapped:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/UIEventHandler;->UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    return p1
.end method

.method public UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "UIStartTransaction - %f, %f, %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/amazon/krf/internal/input/UIEventHandlerDebug;->mWrapped:Lcom/amazon/krf/platform/UIEventHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/krf/platform/UIEventHandler;->UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;

    move-result-object p1

    return-object p1
.end method
