.class public abstract Lcom/amazon/ksdk/profiles/GetSharedBooksCallback;
.super Ljava/lang/Object;
.source "GetSharedBooksCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onFailure(Lcom/amazon/ksdk/profiles/RequestErrorCode;)V
.end method

.method public abstract onSuccess(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/profiles/SharableResource;",
            ">;)V"
        }
    .end annotation
.end method
