.class public Lcom/amazon/ea/purchase/model/FailRecord;
.super Ljava/lang/Object;
.source "FailRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;,
        Lcom/amazon/ea/purchase/model/FailRecord$ActionType;
    }
.end annotation


# static fields
.field private static final FIELD_SEPARATOR:Ljava/lang/String; = "@@"

.field private static final SERIALIZATION_PATTERN:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.model.FailRecord"


# instance fields
.field public final action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

.field public final expiry:J

.field public final message:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\w*)@@(\\w*)@@(\\d*)(@@(.*))?"

    .line 42
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/purchase/model/FailRecord;->SERIALIZATION_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/purchase/model/FailRecord$ActionType;",
            "Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long v8, v0, v2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v9}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;J)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/purchase/model/FailRecord$ActionType;",
            "Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;",
            "Lcom/google/common/base/Optional<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    .line 84
    iput-object p2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 85
    iput-object p3, p0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    .line 86
    iput-wide p4, p0, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    return-void
.end method

.method public static fromSerializableString(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord;
    .locals 8

    if-eqz p0, :cond_2

    .line 153
    :try_start_0
    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord;->SERIALIZATION_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 155
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/purchase/model/FailRecord$ActionType;->valueOf(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    move-result-object v3

    const/4 v1, 0x2

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->valueOf(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    move-result-object v4

    const/4 v1, 0x3

    .line 157
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 158
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v1

    const/4 v2, 0x5

    .line 159
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 160
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, v1

    :goto_0
    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    .line 163
    new-instance v0, Lcom/amazon/ea/purchase/model/FailRecord;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/amazon/ea/purchase/model/FailRecord;-><init>(Lcom/amazon/ea/purchase/model/FailRecord$ActionType;Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;Lcom/google/common/base/Optional;J)V

    return-object v0

    .line 166
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    sget-object v0, Lcom/amazon/ea/purchase/model/FailRecord;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring unexpected FailRecord: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 171
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    sget-object v1, Lcom/amazon/ea/purchase/model/FailRecord;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception while parsing: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 114
    :cond_1
    const-class v2, Lcom/amazon/ea/purchase/model/FailRecord;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 117
    :cond_2
    check-cast p1, Lcom/amazon/ea/purchase/model/FailRecord;

    .line 118
    iget-object v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    iget-object v3, p1, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    iget-object v3, p1, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 119
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    .line 120
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p1, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    iget-object p1, p1, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    .line 121
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isExpired()Z
    .locals 5

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toSerializableString()Ljava/lang/String;
    .locals 4

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "@@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v2, p0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {v2}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 133
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FailRecord [action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->action:Lcom/amazon/ea/purchase/model/FailRecord$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->reason:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expiry="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->expiry:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/model/FailRecord;->message:Lcom/google/common/base/Optional;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
