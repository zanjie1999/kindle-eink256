.class public Lcom/amazon/bookwizard/bifrost/PersonalizedAction;
.super Ljava/lang/Object;
.source "PersonalizedAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;
    }
.end annotation


# instance fields
.field private csrfToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "csrfToken"
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionId"
    .end annotation
.end field

.field private program:Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionProgram"
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "actionType"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCsrfToken()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->csrfToken:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getProgram()Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->program:Lcom/amazon/bookwizard/bifrost/PersonalizedAction$Program;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/bookwizard/bifrost/PersonalizedAction;->type:Ljava/lang/String;

    return-object v0
.end method
