.class public Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;
.super Lcom/amazon/devicesetupservice/scap/v1/BaseInput;
.source "ReportEventsInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/Event;",
            ">;"
        }
    .end annotation
.end field

.field private provisionerDetails:Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;

.field private provisionerNetwork:Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;

.field private sessionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.scap.v1.ReportEventsInput"

    aput-object v2, v0, v1

    .line 47
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/scap/v1/BaseInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 68
    instance-of v0, p1, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;

    .line 75
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/scap/v1/BaseInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->eventList:Ljava/util/List;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->eventList:Ljava/util/List;

    .line 76
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerDetails:Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerDetails:Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;

    .line 77
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerNetwork:Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerNetwork:Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;

    .line 78
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->sessionId:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->sessionId:Ljava/lang/String;

    .line 79
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/Event;",
            ">;"
        }
    .end annotation

    .line 15
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->eventList:Ljava/util/List;

    return-object v0
.end method

.method public getProvisionerDetails()Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerDetails:Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;

    return-object v0
.end method

.method public getProvisionerNetwork()Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerNetwork:Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-super {p0}, Lcom/amazon/devicesetupservice/scap/v1/BaseInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->classNameHashCode:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->eventList:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerDetails:Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerNetwork:Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->sessionId:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEventList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/devicesetupservice/scap/v1/Event;",
            ">;)V"
        }
    .end annotation

    .line 19
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->eventList:Ljava/util/List;

    return-void
.end method

.method public setProvisionerDetails(Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerDetails:Lcom/amazon/devicesetupservice/scap/v1/ScapProvisionerDetails;

    return-void
.end method

.method public setProvisionerNetwork(Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->provisionerNetwork:Lcom/amazon/devicesetupservice/scap/v1/ProvisionerNetwork;

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/devicesetupservice/scap/v1/ReportEventsInput;->sessionId:Ljava/lang/String;

    return-void
.end method
