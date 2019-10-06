package macoun

/*
 * Copyright (c) 2019 by Oliver Boehm
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express orimplied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * (c)reated 04.10.19 by oliver (ob@oasd.de)
 */
class Lebewesen constructor(feld : Feld) {

    enum class State { BORN, DEAD }

    val feld: Feld = feld
    var state = State.BORN

    companion object {
        @JvmStatic
        fun create(feld: Feld) : Lebewesen {
            return Lebewesen(feld)
        }
    }

    fun die() {
        state = State.DEAD
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false

        other as Lebewesen

        if (feld != other.feld) return false

        return true
    }

    override fun hashCode(): Int {
        return feld.hashCode()
    }

    override fun toString(): String {
        if (state == State.BORN) {
            return " X "
        } else {
            return " O "
        }
    }

}