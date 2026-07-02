.class public Lcom/amazon/kindle/cms/api/CommunicationException;
.super Ljava/lang/Exception;
.source "CommunicationException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/CommunicationException$Code;
    }
.end annotation


# instance fields
.field private final m_code:Lcom/amazon/kindle/cms/api/CommunicationException$Code;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;)V
    .locals 1

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CommunicationException;->m_code:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/cms/api/CommunicationException$Code;Ljava/lang/Throwable;)V
    .locals 1

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    iput-object p1, p0, Lcom/amazon/kindle/cms/api/CommunicationException;->m_code:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    return-void
.end method


# virtual methods
.method public getCode()Lcom/amazon/kindle/cms/api/CommunicationException$Code;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CommunicationException;->m_code:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    return-object v0
.end method
