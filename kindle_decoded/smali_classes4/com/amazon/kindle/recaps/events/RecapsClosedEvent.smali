.class public final Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;
.super Ljava/lang/Object;
.source "RecapsClosedEvent.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final recapsLPRModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;)V
    .locals 1

    const-string v0, "recapsLPRModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;->recapsLPRModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    return-void
.end method


# virtual methods
.method public final getRecapsLastReadPositionModel()Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/recaps/events/RecapsClosedEvent;->recapsLPRModel:Lcom/amazon/kindle/recaps/RecapsLastReadPositionModel;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
