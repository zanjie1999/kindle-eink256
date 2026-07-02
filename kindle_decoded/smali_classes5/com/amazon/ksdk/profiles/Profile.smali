.class public final Lcom/amazon/ksdk/profiles/Profile;
.super Ljava/lang/Object;
.source "Profile.java"


# instance fields
.field final mAvatarPath:Ljava/lang/String;

.field final mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

.field final mAvatarUri:Ljava/lang/String;

.field final mCreationDate:Ljava/util/Date;

.field final mHouseholdId:Ljava/lang/String;

.field final mName:Ljava/lang/String;

.field final mProfileCid:Ljava/lang/String;

.field final mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

.field final mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/AvatarStatus;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/ksdk/profiles/ProfileRoleType;Lcom/amazon/ksdk/profiles/ProfileStatusType;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/ksdk/profiles/Profile;->mName:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcom/amazon/ksdk/profiles/Profile;->mCreationDate:Ljava/util/Date;

    .line 41
    iput-object p3, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarUri:Ljava/lang/String;

    .line 42
    iput-object p4, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarPath:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

    .line 44
    iput-object p6, p0, Lcom/amazon/ksdk/profiles/Profile;->mHouseholdId:Ljava/lang/String;

    .line 45
    iput-object p7, p0, Lcom/amazon/ksdk/profiles/Profile;->mProfileCid:Ljava/lang/String;

    .line 46
    iput-object p8, p0, Lcom/amazon/ksdk/profiles/Profile;->mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    .line 47
    iput-object p9, p0, Lcom/amazon/ksdk/profiles/Profile;->mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 97
    instance-of v0, p1, Lcom/amazon/ksdk/profiles/Profile;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    check-cast p1, Lcom/amazon/ksdk/profiles/Profile;

    .line 101
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mCreationDate:Ljava/util/Date;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mCreationDate:Ljava/util/Date;

    .line 102
    invoke-virtual {v0, v2}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarUri:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mAvatarUri:Ljava/lang/String;

    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarPath:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mAvatarPath:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mHouseholdId:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mHouseholdId:Ljava/lang/String;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mProfileCid:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mProfileCid:Ljava/lang/String;

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    iget-object v2, p1, Lcom/amazon/ksdk/profiles/Profile;->mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    iget-object p1, p1, Lcom/amazon/ksdk/profiles/Profile;->mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAvatarPath()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarPath:Ljava/lang/String;

    return-object v0
.end method

.method public getAvatarStatus()Lcom/amazon/ksdk/profiles/AvatarStatus;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

    return-object v0
.end method

.method public getAvatarUri()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarUri:Ljava/lang/String;

    return-object v0
.end method

.method public getCreationDate()Ljava/util/Date;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mCreationDate:Ljava/util/Date;

    return-object v0
.end method

.method public getHouseholdId()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mHouseholdId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProfileCid()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mProfileCid:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleType()Lcom/amazon/ksdk/profiles/ProfileRoleType;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    return-object v0
.end method

.method public getStatusType()Lcom/amazon/ksdk/profiles/ProfileStatusType;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 117
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mCreationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 118
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 119
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 120
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 121
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mHouseholdId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 122
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mProfileCid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 123
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 124
    iget-object v0, p0, Lcom/amazon/ksdk/profiles/Profile;->mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile{mName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mCreationDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mCreationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mAvatarUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAvatarPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mAvatarStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mAvatarStatus:Lcom/amazon/ksdk/profiles/AvatarStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mHouseholdId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mHouseholdId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mProfileCid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mProfileCid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mRoleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mRoleType:Lcom/amazon/ksdk/profiles/ProfileRoleType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mStatusType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/profiles/Profile;->mStatusType:Lcom/amazon/ksdk/profiles/ProfileStatusType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
