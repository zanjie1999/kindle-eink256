.class public final Lcom/audible/hushpuppy/service/settings/ImmutableValue;
.super Ljava/lang/Object;
.source "ImmutableValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/hushpuppy/service/settings/IHushpuppySettings$Value<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final lastUpdateDate:Ljava/util/Date;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/audible/hushpuppy/service/settings/ImmutableValue;->value:Ljava/lang/Object;

    .line 35
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, p2, p3}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lcom/audible/hushpuppy/service/settings/ImmutableValue;->lastUpdateDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getLastUpdateDate()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/service/settings/ImmutableValue;->lastUpdateDate:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/audible/hushpuppy/service/settings/ImmutableValue;->value:Ljava/lang/Object;

    return-object v0
.end method
