.class public Lcom/amazon/identity/auth/device/api/ActorInfo;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field public static final ACTOR_TYPE_ADULT:Ljava/lang/String; = "PERSON.ADULT"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACTOR_TYPE_CHILD:Ljava/lang/String; = "PERSON.CHILD"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field

.field public static final ACTOR_TYPE_TEEN:Ljava/lang/String; = "PERSON.TEEN"
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation
.end field


# instance fields
.field private final fv:Ljava/lang/String;

.field private final fw:Ljava/lang/String;

.field private final fx:Ljava/lang/String;

.field private final fy:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fv:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fw:Ljava/lang/String;

    .line 63
    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fx:Ljava/lang/String;

    .line 64
    iput-object p4, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fy:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountDirectedId()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fw:Ljava/lang/String;

    return-object v0
.end method

.method public getActorDirectedId()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fx:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fv:Ljava/lang/String;

    return-object v0
.end method

.method public getSuggestedActorType()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/ActorInfo;->fy:Ljava/lang/String;

    return-object v0
.end method
