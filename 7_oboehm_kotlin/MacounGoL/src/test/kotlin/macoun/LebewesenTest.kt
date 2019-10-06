package macoun

import org.junit.jupiter.api.Assertions.assertEquals
import org.junit.jupiter.api.Test

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
internal class LebewesenTest {

    @Test
    fun getFeld() {
        val f = Feld(2,3)
        val lw = Lebewesen.create(f)
        assertEquals(f, lw.feld)
    }

    @Test
    fun die() {
        var w = Lebewesen.create(Feld(3,4))
        assertEquals(Lebewesen.State.BORN, w.state)
        w.die()
        assertEquals(Lebewesen.State.DEAD, w.state)
    }

}