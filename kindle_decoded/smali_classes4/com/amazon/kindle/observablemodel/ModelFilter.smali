.class public Lcom/amazon/kindle/observablemodel/ModelFilter;
.super Ljava/lang/Object;
.source "ModelFilter.java"


# static fields
.field public static final ACCOUNT_TYPE_PERSONAL:I = 0x1

.field public static final ACCOUNT_TYPE_SHARED:I = 0x2

.field public static final AUDIBLE_COMPANION_EXCLUDED:I = 0x1

.field public static final AUDIBLE_COMPANION_ONLY:I = 0x2

.field public static final BINDING_ISSUE:I = 0x1

.field public static final BINDING_OMNIBUS:I = 0x3

.field public static final BINDING_TRADE:I = 0x2

.field public static final CAROUSEL_EXCLUDED:I = 0x1

.field public static final CAROUSEL_ONLY:I = 0x2

.field public static final LOCATION_CLOUD:I = 0x2

.field public static final LOCATION_LOCAL:I = 0x1

.field public static final OWNERSHIP_COMIXOLOGY_UNLIMITED:I = 0x9

.field public static final OWNERSHIP_FREE_TRIAL:I = 0x5

.field public static final OWNERSHIP_KINDLE_UNLIMITED:I = 0x3

.field public static final OWNERSHIP_OWNERS_LENDING_LIBRARY:I = 0x7

.field public static final OWNERSHIP_PERSONAL_LENDING:I = 0x8

.field public static final OWNERSHIP_PRIME_READING:I = 0x2

.field public static final OWNERSHIP_PUBLIC_LENDING_LIBRARY:I = 0x4

.field public static final OWNERSHIP_PURCHASED:I = 0x1

.field public static final OWNERSHIP_RENTAL:I = 0x6

.field public static final OWNERSHIP_SHORT_FORM_STORY_UNOWNED:I = 0xa

.field public static final READING_PROGRESS_COMPLETED:I = 0x3

.field public static final READING_PROGRESS_IN_PROGRESS:I = 0x2

.field public static final READING_PROGRESS_UNREAD:I = 0x1

.field public static final SAMPLE_MEMBERSHIP_EXCLUDED:I = 0x1

.field public static final SAMPLE_MEMBERSHIP_ONLY:I = 0x2


# instance fields
.field mAccountTypeSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAudibleCompanionSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBindingSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCarouselSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mInlineFilterLeafName:Ljava/lang/String;

.field mLocationSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOwnershipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mReadingProgressSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mSampleMembershipSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    .line 87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    .line 88
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    .line 89
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    const-string v0, ""

    .line 92
    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v9, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 60
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    .line 73
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    .line 74
    iput-object p3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    .line 75
    iput-object p4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    .line 76
    iput-object p5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    .line 77
    iput-object p6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    .line 78
    iput-object p7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    .line 79
    iput-object p8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    .line 80
    iput-object p9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccountType()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    return-object v0
.end method

.method public getAudibleCompanionSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    return-object v0
.end method

.method public getBindingSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    return-object v0
.end method

.method public getCarouselSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    return-object v0
.end method

.method public getInlineFilterLeafName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocationSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    return-object v0
.end method

.method public getOwnershipSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    return-object v0
.end method

.method public getReadingProgressSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    return-object v0
.end method

.method public getSampleMembershipSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    return-object v0
.end method

.method public modelFilterWithAccountType(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 125
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v7, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithAudibleCompanionSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 115
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v4, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithBindingSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 118
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v5, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithCarousel(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 129
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v8, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithInlineFilterLeafName(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11

    .line 133
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    move-object v0, v10

    move-object v9, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithLocationSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 121
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithOwnershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 106
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v1, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithReadingProgressSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 109
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v3, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mSampleMembershipSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method

.method public modelFilterWithSampleMembershipSet(Ljava/util/Set;)Lcom/amazon/kindle/observablemodel/ModelFilter;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/observablemodel/ModelFilter;"
        }
    .end annotation

    .line 112
    new-instance v10, Lcom/amazon/kindle/observablemodel/ModelFilter;

    iget-object v1, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mOwnershipSet:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mReadingProgressSet:Ljava/util/Set;

    iget-object v4, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAudibleCompanionSet:Ljava/util/Set;

    iget-object v5, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mBindingSet:Ljava/util/Set;

    iget-object v6, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mLocationSet:Ljava/util/Set;

    iget-object v7, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mAccountTypeSet:Ljava/util/Set;

    iget-object v8, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mCarouselSet:Ljava/util/Set;

    iget-object v9, p0, Lcom/amazon/kindle/observablemodel/ModelFilter;->mInlineFilterLeafName:Ljava/lang/String;

    move-object v0, v10

    move-object v3, p1

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/observablemodel/ModelFilter;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/lang/String;)V

    return-object v10
.end method
