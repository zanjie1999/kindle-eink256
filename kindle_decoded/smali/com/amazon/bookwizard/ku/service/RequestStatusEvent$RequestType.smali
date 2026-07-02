.class public final enum Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;
.super Ljava/lang/Enum;
.source "RequestStatusEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/bookwizard/ku/service/RequestStatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

.field public static final enum BORROW:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

.field public static final enum COR_UPDATED:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

.field public static final enum KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

.field public static final enum PREVIEW_ELIGIBLE:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 25
    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    const/4 v1, 0x0

    const-string v2, "KU_SIGNUP"

    invoke-direct {v0, v2, v1}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    .line 26
    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    const/4 v2, 0x1

    const-string v3, "BORROW"

    invoke-direct {v0, v3, v2}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->BORROW:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    .line 27
    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    const/4 v3, 0x2

    const-string v4, "COR_UPDATED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->COR_UPDATED:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    .line 28
    new-instance v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    const/4 v4, 0x3

    const-string v5, "PREVIEW_ELIGIBLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->PREVIEW_ELIGIBLE:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    .line 24
    sget-object v6, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->KU_SIGNUP:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->BORROW:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->COR_UPDATED:Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->$VALUES:[Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->$VALUES:[Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    invoke-virtual {v0}, [Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/bookwizard/ku/service/RequestStatusEvent$RequestType;

    return-object v0
.end method
