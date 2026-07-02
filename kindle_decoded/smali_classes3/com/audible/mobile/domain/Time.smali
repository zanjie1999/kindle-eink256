.class public interface abstract Lcom/audible/mobile/domain/Time;
.super Ljava/lang/Object;
.source "Time.java"

# interfaces
.implements Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 15
    new-instance v0, Lcom/audible/mobile/domain/ImmutableTimeImpl;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/audible/mobile/domain/ImmutableTimeImpl;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method


# virtual methods
.method public abstract getAmount()J
.end method

.method public abstract getUnit()Ljava/util/concurrent/TimeUnit;
.end method
