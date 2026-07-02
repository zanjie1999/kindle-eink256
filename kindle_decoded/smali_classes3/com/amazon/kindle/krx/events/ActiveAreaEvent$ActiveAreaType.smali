.class public final enum Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;
.super Ljava/lang/Enum;
.source "ActiveAreaEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/events/ActiveAreaEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActiveAreaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

.field public static final enum Audio:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

.field public static final enum Buy:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

.field public static final enum DetailPage:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

.field public static final enum ExternalUrl:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

.field public static final enum Other:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

.field public static final enum Video:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v1, 0x0

    const-string v2, "Buy"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Buy:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 26
    new-instance v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v2, 0x1

    const-string v3, "DetailPage"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->DetailPage:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 30
    new-instance v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v3, 0x2

    const-string v4, "ExternalUrl"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->ExternalUrl:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 34
    new-instance v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v4, 0x3

    const-string v5, "Audio"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Audio:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 38
    new-instance v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v5, 0x4

    const-string v6, "Video"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Video:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 43
    new-instance v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v6, 0x5

    const-string v7, "Other"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Other:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    .line 17
    sget-object v8, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Buy:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->DetailPage:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->ExternalUrl:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Audio:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->Video:Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->$VALUES:[Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;
    .locals 1

    .line 17
    const-class v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->$VALUES:[Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/events/ActiveAreaEvent$ActiveAreaType;

    return-object v0
.end method
