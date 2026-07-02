.class public abstract Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;
.super Ljava/lang/Object;
.source "KRXDisposableObject.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->mObject:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dispose()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->mObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->onDispose()V

    :cond_0
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->mObject:Ljava/lang/Object;

    return-void
.end method

.method public final getObject()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/images/KRXDisposableObject;->mObject:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract onDispose()V
.end method
