.class Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;
.super Ljava/lang/Object;
.source "TzdbZoneRulesProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/zone/TzdbZoneRulesProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Version"
.end annotation


# instance fields
.field private final regionArray:[Ljava/lang/String;

.field private final ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndices:[S

.field private final versionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;[SLjava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[S",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    iput-object p4, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 296
    iput-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    .line 297
    iput-object p2, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->regionArray:[Ljava/lang/String;

    .line 298
    iput-object p3, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleIndices:[S

    return-void
.end method

.method static synthetic access$000(Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;)Ljava/lang/String;
    .locals 0

    .line 288
    iget-object p0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method createRule(S)Lorg/threeten/bp/zone/ZoneRules;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 314
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 315
    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    .line 316
    check-cast v0, [B

    .line 317
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    invoke-static {v1}, Lorg/threeten/bp/zone/Ser;->read(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    .line 319
    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleData:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 321
    :cond_0
    check-cast v0, Lorg/threeten/bp/zone/ZoneRules;

    return-object v0
.end method

.method getRules(Ljava/lang/String;)Lorg/threeten/bp/zone/ZoneRules;
    .locals 4

    .line 302
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->regionArray:[Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->ruleIndices:[S

    aget-short v0, v1, v0

    invoke-virtual {p0, v0}, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->createRule(S)Lorg/threeten/bp/zone/ZoneRules;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 309
    new-instance v1, Lorg/threeten/bp/zone/ZoneRulesException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid binary time-zone data: TZDB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", version: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/threeten/bp/zone/ZoneRulesException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 326
    iget-object v0, p0, Lorg/threeten/bp/zone/TzdbZoneRulesProvider$Version;->versionId:Ljava/lang/String;

    return-object v0
.end method
