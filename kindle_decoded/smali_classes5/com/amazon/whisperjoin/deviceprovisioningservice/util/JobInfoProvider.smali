.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;
.super Ljava/lang/Object;
.source "JobInfoProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide(Landroid/content/Context;ILjava/lang/Class;JJJZ)Landroid/app/job/JobInfo;
    .locals 12

    .line 19
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/amazon/whisperjoin/deviceprovisioningservice/util/JobInfoProvider;->provide(Landroid/content/Context;ILjava/lang/Class;JJJZLandroid/os/PersistableBundle;)Landroid/app/job/JobInfo;

    move-result-object v0

    return-object v0
.end method

.method public provide(Landroid/content/Context;ILjava/lang/Class;JJJZLandroid/os/PersistableBundle;)Landroid/app/job/JobInfo;
    .locals 2

    .line 25
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v0, p2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p1, 0x1

    .line 26
    invoke-virtual {v0, p1}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 27
    invoke-virtual {p2, p8, p9, p1}, Landroid/app/job/JobInfo$Builder;->setBackoffCriteria(JI)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 28
    invoke-virtual {p1, p4, p5}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 29
    invoke-virtual {p1, p6, p7}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 30
    invoke-virtual {p1, p10}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 31
    invoke-virtual {p1, p11}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p1

    return-object p1
.end method
