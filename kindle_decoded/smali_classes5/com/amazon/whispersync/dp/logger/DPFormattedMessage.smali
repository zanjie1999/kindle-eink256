.class public Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;
.super Ljava/lang/Object;
.source "DPFormattedMessage.java"


# instance fields
.field private final mFormattedString:Ljava/lang/String;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {p1, p2, p3}, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->mFormattedString:Ljava/lang/String;

    .line 50
    array-length p1, p3

    if-lez p1, :cond_0

    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p3, p1

    instance-of p1, p1, Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    .line 51
    array-length p1, p3

    add-int/lit8 p1, p1, -0x1

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Throwable;

    iput-object p1, p0, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    :cond_0
    return-void
.end method

.method public static varargs toDPFormat(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 94
    array-length v0, p2

    const-string v1, "<null>"

    if-nez p0, :cond_0

    move-object p0, v1

    :cond_0
    if-nez p1, :cond_1

    move-object p1, v1

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x28

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " - "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v0, :cond_2

    add-int/lit8 p0, v0, -0x1

    .line 101
    aget-object p0, p2, p0

    instance-of p0, p0, Ljava/lang/Throwable;

    if-eqz p0, :cond_2

    add-int/lit8 v0, v0, -0x1

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-ge p0, v0, :cond_5

    if-lez p0, :cond_3

    const-string p1, ","

    .line 107
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string p1, " "

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    if-ge p0, v0, :cond_4

    const-string p1, ": "

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p1, p2, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 118
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->mThrowable:Ljava/lang/Throwable;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/dp/logger/DPFormattedMessage;->mFormattedString:Ljava/lang/String;

    return-object v0
.end method
