.class public Lcom/amazon/whispersync/dp/utils/ThreadGuard;
.super Ljava/lang/Object;
.source "ThreadGuard.java"


# static fields
.field private static final INSTANCE:Lcom/amazon/whispersync/dp/utils/ThreadGuard;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dp/utils/ThreadGuard;

    invoke-direct {v0}, Lcom/amazon/whispersync/dp/utils/ThreadGuard;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dp/utils/ThreadGuard;->INSTANCE:Lcom/amazon/whispersync/dp/utils/ThreadGuard;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureThread(Ljava/lang/String;)V
    .locals 1

    .line 36
    sget-object v0, Lcom/amazon/whispersync/dp/utils/ThreadGuard;->INSTANCE:Lcom/amazon/whispersync/dp/utils/ThreadGuard;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/dp/utils/ThreadGuard;->doEnsureThread(Ljava/lang/String;)V

    return-void
.end method

.method public static ensureThreadPrefix(Ljava/lang/String;)V
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/whispersync/dp/utils/ThreadGuard;->INSTANCE:Lcom/amazon/whispersync/dp/utils/ThreadGuard;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/dp/utils/ThreadGuard;->doEnsureThreadPrefix(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doEnsureThread(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 65
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 66
    :goto_0
    invoke-static {v3}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectFalse(Z)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectFalse(Z)V

    .line 69
    invoke-static {p1, v0}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectEquals(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must expect a thread name."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public doEnsureThreadPrefix(Ljava/lang/String;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 73
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 78
    :goto_0
    invoke-static {v3}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectFalse(Z)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectFalse(Z)V

    .line 81
    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "Prefix: "

    aput-object v5, v4, v2

    aput-object p1, v4, v1

    const/4 p1, 0x2

    const-string v1, " Actual: "

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object v0, v4, p1

    invoke-static {v3, v4}, Lcom/amazon/whispersync/dp/utils/FailFast;->expectTrue(Z[Ljava/lang/Object;)V

    return-void

    .line 74
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must expect a thread prefix."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
