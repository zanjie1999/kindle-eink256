.class public Lcom/amazon/kindle/RevokeOwnershipResumer;
.super Ljava/lang/Object;
.source "RevokeOwnershipResumer.java"

# interfaces
.implements Lcom/amazon/kindle/IRevokeOwnershipResumer;


# static fields
.field private static final MILLISEC_IN_SEC:J = 0x3e8L

.field private static final MINS_TO_WAIT:I = 0x14

.field private static final SECONDS_IN_MINUTE:J = 0x3cL

.field private static final TAG:Ljava/lang/String;

.field private static final TIMER_DELAY:J = 0x124f80L

.field private static final TIMER_PERIOD:J = 0x124f80L


# instance fields
.field private final MAX_RETRIES:I

.field protected libController:Lcom/amazon/kcp/library/ILibraryController;

.field private retryRevokeReqsTask:Ljava/util/TimerTask;

.field protected revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/RevokeOwnershipResumer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/RevokeOwnershipResumer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 28
    iput v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->MAX_RETRIES:I

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->retryRevokeReqsTask:Ljava/util/TimerTask;

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->libController:Lcom/amazon/kcp/library/ILibraryController;

    .line 47
    iput-object p2, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    return-void
.end method


# virtual methods
.method public deleteRevokeRequest(Ljava/lang/String;)V
    .locals 2

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->deleteRevokeTrackers(Ljava/util/Collection;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke : Deleted revoke tracker for Asin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public persistRevokeRequest(Lcom/amazon/kindle/revoke/IRevokeTracker;)V
    .locals 6

    .line 76
    sget-object v0, Lcom/amazon/kindle/RevokeOwnershipResumer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke : persisiting revoke req for tracking. Asin : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/amazon/kindle/revoke/RevokeFailureType;->NETWORK:Lcom/amazon/kindle/revoke/RevokeFailureType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getFailureType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->insert(Lcom/amazon/kindle/revoke/IRevokeTracker;)J

    goto :goto_1

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    .line 84
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->getRevokeTrackerByAsin(Ljava/lang/String;)Lcom/amazon/kindle/revoke/IRevokeTracker;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    invoke-interface {v0}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getRetryCount()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    .line 88
    invoke-interface {v0}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getRetryCount()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    .line 89
    invoke-interface {p1, v1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->setRetryCount(I)V

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke : Incremented retryCount to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Asin : "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 94
    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->deleteRevokeTrackers(Ljava/util/Collection;)V

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Revoke : Deleted revoke tracker for Asin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void

    .line 100
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->insert(Lcom/amazon/kindle/revoke/IRevokeTracker;)J

    .line 103
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->timer:Ljava/util/Timer;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    sget-object v0, Lcom/amazon/kindle/revoke/RevokeFailureType;->OTHER:Lcom/amazon/kindle/revoke/RevokeFailureType;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->getRevokeTrackersByFailureType(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 105
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->timer:Ljava/util/Timer;

    .line 106
    new-instance v1, Lcom/amazon/kindle/RevokeOwnershipResumer$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/RevokeOwnershipResumer$1;-><init>(Lcom/amazon/kindle/RevokeOwnershipResumer;)V

    iput-object v1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->retryRevokeReqsTask:Ljava/util/TimerTask;

    .line 112
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->timer:Ljava/util/Timer;

    const-wide/32 v2, 0x124f80

    const-wide/32 v4, 0x124f80

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    return-void
.end method

.method public resumeRevokeRequests()V
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    .line 121
    invoke-interface {v0}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->getAllRevokeTrackers()Ljava/util/List;

    move-result-object v0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/revoke/IRevokeTracker;

    .line 124
    invoke-interface {v1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getRetryCount()I

    move-result v2

    const/4 v3, 0x3

    if-gt v2, v3, :cond_0

    .line 125
    iget-object v2, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->libController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v1}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v2, v1, v3}, Lcom/amazon/kcp/library/ILibraryController;->revokeOwnership(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resumeRevokeRequests(Lcom/amazon/kindle/revoke/RevokeFailureType;)V
    .locals 3

    .line 52
    sget-object v0, Lcom/amazon/kindle/RevokeOwnershipResumer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Revoke : resuming revoke req for failure type :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->revokeTrackerDAO:Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/revoke/dao/IRevokeTrackerDAO;->getRevokeTrackersByFailureType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/amazon/kindle/revoke/RevokeFailureType;->OTHER:Lcom/amazon/kindle/revoke/RevokeFailureType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 57
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    iget-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->retryRevokeReqsTask:Ljava/util/TimerTask;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->timer:Ljava/util/Timer;

    .line 67
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/revoke/IRevokeTracker;

    .line 68
    invoke-interface {v0}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getRetryCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/RevokeOwnershipResumer;->libController:Lcom/amazon/kcp/library/ILibraryController;

    invoke-interface {v0}, Lcom/amazon/kindle/revoke/IRevokeTracker;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/amazon/kcp/library/ILibraryController;->revokeOwnership(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    return-void
.end method
