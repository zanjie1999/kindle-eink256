.class public Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;
.super Ljava/lang/Object;
.source "SDKGlobalConfiguration.java"


# static fields
.field private static final GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static getGlobalTimeOffset()I
    .locals 1

    .line 185
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public static setGlobalTimeOffset(I)V
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/SDKGlobalConfiguration;->GLOBAL_TIME_OFFSET:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method
