.class public final enum Lcom/amazon/kindle/cms/api/CommunicationException$Code;
.super Ljava/lang/Enum;
.source "CommunicationException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/api/CommunicationException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/CommunicationException$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/CommunicationException$Code;

.field public static final enum NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

.field public static final enum RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

.field public static final enum SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

.field public static final enum VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;


# instance fields
.field private final m_message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 14
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    const/4 v1, 0x0

    const-string v2, "NoConnection"

    const-string v3, "No connection to CMS"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/cms/api/CommunicationException$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    const/4 v2, 0x1

    const-string v3, "RemoteException"

    const-string v4, "Remote call failed"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kindle/cms/api/CommunicationException$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    .line 22
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    const/4 v3, 0x2

    const-string v4, "SerializationProblem"

    const-string v5, "Cannot marshall data"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kindle/cms/api/CommunicationException$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    .line 27
    new-instance v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    const/4 v4, 0x3

    const-string v5, "VersionMismatch"

    const-string v6, "Server and client version mismatch"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kindle/cms/api/CommunicationException$Code;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->VersionMismatch:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    .line 11
    sget-object v6, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->NoConnection:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->RemoteException:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->SerializationProblem:Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->$VALUES:[Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->m_message:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/CommunicationException$Code;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/CommunicationException$Code;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->$VALUES:[Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/CommunicationException$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/CommunicationException$Code;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/cms/api/CommunicationException$Code;->m_message:Ljava/lang/String;

    return-object v0
.end method
