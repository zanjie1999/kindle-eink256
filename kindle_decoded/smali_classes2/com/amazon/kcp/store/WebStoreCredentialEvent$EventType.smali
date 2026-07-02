.class public final enum Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;
.super Ljava/lang/Enum;
.source "WebStoreCredentialEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/WebStoreCredentialEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

.field public static final enum UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

.field public static final enum UPDATE_FAILED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    const/4 v1, 0x0

    const-string v2, "UPDATED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    const/4 v2, 0x1

    const-string v3, "UPDATE_FAILED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATE_FAILED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    .line 11
    sget-object v4, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->UPDATED:Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->$VALUES:[Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;
    .locals 1

    .line 11
    const-class v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;
    .locals 1

    .line 11
    sget-object v0, Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->$VALUES:[Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/WebStoreCredentialEvent$EventType;

    return-object v0
.end method
