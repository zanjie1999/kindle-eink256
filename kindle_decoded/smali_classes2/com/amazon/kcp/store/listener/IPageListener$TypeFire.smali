.class public final enum Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;
.super Ljava/lang/Enum;
.source "IPageListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/listener/IPageListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TypeFire"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

.field public static final enum CONSISTENT:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

.field public static final enum RUN_ONCE:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 11
    new-instance v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    const/4 v1, 0x0

    const-string v2, "CONSISTENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->CONSISTENT:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    new-instance v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    const/4 v2, 0x1

    const-string v3, "RUN_ONCE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->RUN_ONCE:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    .line 10
    sget-object v4, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->CONSISTENT:Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->$VALUES:[Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->$VALUES:[Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/listener/IPageListener$TypeFire;

    return-object v0
.end method
