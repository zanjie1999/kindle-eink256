.class public Lcom/amazon/kindle/nln/NlnWaypointIndexManager;
.super Ljava/lang/Object;
.source "NlnWaypointIndexManager.java"


# instance fields
.field private m_mrprPage:Lcom/amazon/kindle/nln/IThumbnailPage;

.field private m_mrprPosition:Lcom/amazon/kindle/krx/reader/IPosition;

.field private m_pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;"
        }
    .end annotation
.end field

.field private m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

.field private m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_pages:Ljava/util/List;

    .line 24
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 27
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 30
    iput-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    if-eqz p1, :cond_0

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 40
    iput-object p2, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "MRPR cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getPageContainingPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_pages:Ljava/util/List;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 141
    invoke-static {v0, p1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->getPageContainingPosition(Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public isMrpr(Lcom/amazon/kindle/nln/IThumbnailPage;)Z
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isWaypoint(Lcom/amazon/kindle/nln/IThumbnailPage;)Z
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public updateMrprPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 80
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->getPageContainingPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    return-void

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "MRPR cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updatePages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/nln/IThumbnailPage;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_pages:Ljava/util/List;

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_pages:Ljava/util/List;

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->getPageContainingPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_mrprPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 59
    iget-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->getPageContainingPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    return-void
.end method

.method public updateWaypointPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 92
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    .line 93
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 101
    :cond_1
    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPosition:Lcom/amazon/kindle/krx/reader/IPosition;

    .line 102
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->getPageContainingPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/nln/IThumbnailPage;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/nln/NlnWaypointIndexManager;->m_waypointPage:Lcom/amazon/kindle/nln/IThumbnailPage;

    return-void
.end method
