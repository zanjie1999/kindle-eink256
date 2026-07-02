.class public Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;
.super Ljava/lang/Object;
.source "ExceptionLoggingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final logLevel:I

.field private final wrappedRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Runnable;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->logLevel:I

    .line 18
    iput-object p2, p0, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->wrappedRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x3

    .line 23
    invoke-direct {p0, v0, p1}, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;-><init>(ILjava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 31
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->wrappedRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Error running runnable"

    .line 36
    iget v2, p0, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->logLevel:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 51
    sget-object v2, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 48
    :cond_0
    sget-object v2, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 45
    :cond_1
    sget-object v2, Lcom/amazon/kedu/flashcards/utils/ExceptionLoggingRunnable;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    :cond_2
    :goto_0
    throw v0
.end method
