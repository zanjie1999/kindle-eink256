.class public Lcom/amazon/ea/OneTapBookOpenRunnable;
.super Ljava/lang/Object;
.source "OneTapBookOpenRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final asinCoverView:Landroid/view/View;

.field private final book:Lcom/amazon/kindle/krx/content/IBook;

.field private final manager:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/ea/OneTapBookOpenRunnable;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/OneTapBookOpenRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/content/IBook;Landroid/view/View;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    .line 23
    iput-object p2, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->asinCoverView:Landroid/view/View;

    .line 26
    const-class p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    iput-object p1, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->manager:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 31
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, " in one tap! "

    if-nez v0, :cond_0

    .line 33
    sget-object v0, Lcom/amazon/ea/OneTapBookOpenRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ReadingActionsActivity is Null. Cannot open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 35
    :cond_0
    iget-object v2, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->asinCoverView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 36
    sget-object v0, Lcom/amazon/ea/OneTapBookOpenRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "asinCoverView is Null. Cannot open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_1
    sget-object v1, Lcom/amazon/ea/OneTapBookOpenRunnable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening bookId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " in one tap from EndActions! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->manager:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    iget-object v2, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->book:Lcom/amazon/kindle/krx/content/IBook;

    iget-object v3, p0, Lcom/amazon/ea/OneTapBookOpenRunnable;->asinCoverView:Landroid/view/View;

    const-string v4, "endactions"

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
