.class public final Lcom/amazon/ksdk/profiles/ProfileSuggestion;
.super Ljava/lang/Object;
.source "ProfileSuggestion.java"


# instance fields
.field final mEnrollmentDate:Ljava/util/Date;

.field final mProfile:Lcom/amazon/ksdk/profiles/Profile;

.field final mProgramName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/ksdk/profiles/Profile;Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mProfile:Lcom/amazon/ksdk/profiles/Profile;

    .line 22
    iput-object p2, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mProgramName:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mEnrollmentDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public getEnrollmentDate()Ljava/util/Date;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mEnrollmentDate:Ljava/util/Date;

    return-object v0
.end method

.method public getProfile()Lcom/amazon/ksdk/profiles/Profile;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mProfile:Lcom/amazon/ksdk/profiles/Profile;

    return-object v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mProgramName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProfileSuggestion{mProfile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mProfile:Lcom/amazon/ksdk/profiles/Profile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mProgramName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mProgramName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mEnrollmentDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/ProfileSuggestion;->mEnrollmentDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
